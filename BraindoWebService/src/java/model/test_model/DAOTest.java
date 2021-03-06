/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.test_model;

import common.ShieldVault;
import common.entities.Patient;
import common.entities.Test;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Types;
import java.util.Date;
import model.DAO;
import model.Registry;
import static model.Registry.CODE_FAILED;
import static model.Registry.CODE_RESOURCE_CREATED;

public class DAOTest {
    private Connection _dbCon;
    private static String _sqlTestRegistration = "{?=call DIAGNOSTICO_REGISTRAR(?,?,?,?,?,?,?,?)}";

    private ResultSet rs;
    
    public Test registrationTest (Test _test, String neuralNetworkAnswers, String emotions, String sentiments) throws Exception{
        
        Test _testError = new Test();
        CallableStatement cstmt;
        
        int response = 0;
        
        try {
            
            _dbCon = DAO.getBdConnect();
            cstmt = _dbCon.prepareCall(_sqlTestRegistration);
            //Parametro de salida
            cstmt.registerOutParameter(1, Types.INTEGER);
            Date date = new Date();
            java.sql.Date sqlDate = new java.sql.Date(date.getTime());
            String answers = "";
            for (int answer : _test.getAnswers()){
                answers += answer + ",";
            }
            answers += _test.getAnswer40();
            cstmt.setDate(2, sqlDate);
            cstmt.setString(3, sentiments);
            cstmt.setString(4, emotions);
            cstmt.setString(5, answers);
            cstmt.setString(6, neuralNetworkAnswers);
            String totalanx = neuralNetworkAnswers.split("/")[5];
            float totalAnxiety = Float.parseFloat(totalanx);
            cstmt.setFloat(7, totalAnxiety);
            ShieldVault crypto = new ShieldVault();
            String key  = "C:\\Users\\Bárbara Fernández\\Documents\\GitHub\\TesisBraindo\\BraindoWebService\\privatekey.dat";
            String email = crypto.desencriptadoPrivadaRSA(_test.getPatient().get_email(), key);
            int id = Integer.parseInt(crypto.desencriptadoPrivadaRSA(_test.getPatient().get_id(), key));
            cstmt.setInt(8, id);
            cstmt.setString(9, email);
            cstmt.execute();
            response = cstmt.getInt(1);
            
            if(response == Registry.CODE_RESOURCE_CREATED){
                
                _test.set_error(CODE_RESOURCE_CREATED);
                return _test;    
                
            }else{
                
                _testError.set_error(CODE_FAILED);
                return _testError;
                
            }
            
        } catch (SQLException ex) {
            
            throw ex;
            
        } catch (Exception ex) {
            
            throw ex;
            
        } finally {
            
            _dbCon.close();
            
        }
    }
}
