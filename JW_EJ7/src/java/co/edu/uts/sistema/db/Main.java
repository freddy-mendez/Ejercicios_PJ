/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.edu.uts.sistema.db;

import co.edu.uts.sistema.modelo.Vehiculo;
import java.util.ArrayList;

/**
 *
 * @author USUARIO
 */
public class Main {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        VehiculoDAO vehiculoDAO = new VehiculoDAO();
        ArrayList<Vehiculo> datos = vehiculoDAO.getVehiculos();
        for (Vehiculo v:datos) {
            System.out.println(v);
        }
                
    }
    
}
