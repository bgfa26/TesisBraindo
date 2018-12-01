/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package service;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import common.entities.Patient;
import common.entities.Test;
import controller.patient_module.RegistrationPatientCommand;
import controller.test_module.RegistrationTestCommand;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.UriInfo;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PUT;
import javax.ws.rs.QueryParam;
import static model.Registry.CODE_FAILED;

/**
 * REST Web Service
 *
 * @author LuisAlejandro
 */
@Path("braindo")
public class BraindoResource {

    @Context
    private UriInfo context;

    /**
     * Creates a new instance of BraindoResource
     */
    public BraindoResource() {
    }

    /**
     * Retrieves representation of an instance of service.BraindoResource
     * @return an instance of java.lang.String
     */
    @GET
    @Produces("application/xml")
    public String getXml() {
        //TODO return proper representation object
        throw new UnsupportedOperationException();
    }

    /**
     * PUT method for updating or creating an instance of BraindoResource
     * @param content representation for the resource
     * @return an HTTP response with content of the updated or created resource.
     */
    @PUT
    @Consumes("application/xml")
    public void putXml(String content) {
    }
    
    
    @GET
    @Path("patientRegistration")
    @Produces("application/json")
    
    public String addPatient (@QueryParam("patient") String _patient){
        
        Gson gson = new GsonBuilder().create();
        Patient patient = gson.fromJson(_patient, Patient.class);
        RegistrationPatientCommand cmd = new RegistrationPatientCommand(patient);
        
        try {
            cmd.execute();
            return gson.toJson(cmd.getResponse());
            
        } catch (Exception ex) {
            
            Patient error = new Patient();
            error.set_error(CODE_FAILED);
            return gson.toJson(error);
            
        }
    }
    
    @GET
    @Path("testRegistration")
    @Produces("application/json")
    
    public String addTest (@QueryParam("test") String _test){
        
        Gson gson = new GsonBuilder().create();
        Test test = gson.fromJson(_test, Test.class);
        RegistrationTestCommand cmd = new RegistrationTestCommand(test);
        
        try {
            cmd.execute();
            return gson.toJson(cmd.getResponse());
            
        } catch (Exception ex) {
            
            Test error = new Test();
            error.set_error(CODE_FAILED);
            return gson.toJson(error);
            
        }
    }
}
