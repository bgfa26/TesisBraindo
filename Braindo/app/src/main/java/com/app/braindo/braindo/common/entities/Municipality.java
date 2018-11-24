package com.app.braindo.braindo.common.entities;

import java.util.ArrayList;

public class Municipality {
    private ArrayList<String> municipio;

    public Municipality(){}

    public void getMunicipalityDistritoCapital(){
        municipio.clear();
        municipio.add("Libertador");
    }

    public void getMunicipalityVargas(){
        municipio.clear();
        municipio.add("Vargas");
    }

    public void getMunicipalityMiranda(){
        municipio.clear();
        municipio.add("Acevedo");
        municipio.add("Andrés Bello");
        municipio.add("Baruta");
        municipio.add("Brión");
        municipio.add("Buroz");
        municipio.add("Carrizal");
        municipio.add("Chacao");
        municipio.add("Cristóbal Rojas");
        municipio.add("El Hatillo");
        municipio.add("Guaicaipuro");
        municipio.add("Independencia");
        municipio.add("Los Salias");
        municipio.add("Páez");
        municipio.add("Paz Castillo");
        municipio.add("Pedro Gual");
        municipio.add("Plaza");
        municipio.add("Simón Bolívar");
        municipio.add("Sucre");
        municipio.add("Tomás Lander");
        municipio.add("Urdaneta");
        municipio.add("Zamora");
    }

}
