package model;

import java.io.Serializable;
import java.util.ArrayList;

public class ListaAmigos implements Serializable {
    private ArrayList<Amigo> amigos;
    private String nombre;

    public ListaAmigos() {
        amigos = new ArrayList<>();
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public ArrayList<Amigo> getAmigos() {
        return amigos;
    }

    public void setAmigos(ArrayList<Amigo> amigos) {
        this.amigos = amigos;
    }
    
    public Amigo getAmigo(int pos) {
        if (pos>=0 && pos<amigos.size()) {
            return amigos.get(pos);
        }
        return null;
    }
    
    public boolean eliminarAmigo(int pos) {
        if (pos>=0 && pos<amigos.size()) {
            amigos.remove(pos);
            return true;
        }
        return false;
    }
    
    public boolean agregarAmigo(Amigo amigo) {
        if (existeAmigo(amigo)) {
            return false;
        } else {
            amigos.add(amigo);
            return true;
        }
        //return false;
    }
    
    private boolean existeAmigo(Amigo amigo) {
        boolean flag = false;
        for(Amigo a: amigos) {
            /*if (a.getNombre().equals(amigo.getNombre()) && 
                    a.getApellido().equals(amigo.getApellido())) {
                flag=true;
            }*/
            if (a.equals(amigo)) {
                flag=true;
                break;
            }
        }
        return flag;
    }
    
}
