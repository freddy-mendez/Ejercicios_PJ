/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.ArrayList;

/**
 *
 * @author USUARIO
 */
public class ListaPersonas {
    private ArrayList<Persona> personas;

    public ListaPersonas() {
        personas=new ArrayList();
    }

    public ArrayList<Persona> getPersonas() {
        return personas;
    }

    public void setPersonas(ArrayList<Persona> personas) {
        this.personas = personas;
    }
    
    public void setPersona(Persona p) {
        personas.add(p);
    }  
}
