/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author USUARIO
 */
public class Persona {
    private int doc;
    private String nombre;
    private int edad;

    public int getDoc() {
        return doc;
    }

    public void setDoc(int doc) {
        this.doc = doc;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getEdad() {
        return edad;
    }

    public void setEdad(int edad) {
        this.edad = edad;
    }

    @Override
    public String toString() {
        return "Persona{" + "doc=" + doc + ", nombre=" + nombre + ", edad=" + edad + '}';
    }
}
