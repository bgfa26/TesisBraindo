/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package common.entities;

import java.util.ArrayList;

public class Municipality {
    private ArrayList<String> municipalities = new ArrayList<String>();

    public Municipality(){}

    public ArrayList<String> getMunicipalityDistritoCapital(){
        municipalities.clear();  
        municipalities.add("Libertador");
        return municipalities;
    }

    public ArrayList<String> getMunicipalityVargas(){
        municipalities.clear();
        municipalities.add("Vargas");
        return municipalities;
    }

    public ArrayList<String> getMunicipalityMiranda(){
        municipalities.clear();
        municipalities.add("Acevedo");
        municipalities.add("Andrés Bello");
        municipalities.add("Baruta");
        municipalities.add("Brión");
        municipalities.add("Buroz");
        municipalities.add("Carrizal");
        municipalities.add("Chacao");
        municipalities.add("Cristóbal Rojas");
        municipalities.add("El Hatillo");
        municipalities.add("Guaicaipuro");
        municipalities.add("Independencia");
        municipalities.add("Los Salias");
        municipalities.add("Páez");
        municipalities.add("Paz Castillo");
        municipalities.add("Pedro Gual");
        municipalities.add("Plaza");
        municipalities.add("Simón Bolívar");
        municipalities.add("Sucre");
        municipalities.add("Tomás Lander");
        municipalities.add("Urdaneta");
        municipalities.add("Zamora");
        return municipalities;
    }
}
