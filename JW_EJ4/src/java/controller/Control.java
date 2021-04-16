/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Amigo;
import model.ListaAmigos;

/**
 *
 * @author USUARIO
 */
@WebServlet(name = "Control", urlPatterns = {"/Control"})
public class Control extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
//        ListaAmigos lista_request = (ListaAmigos) request.getAttribute("lista1");
//        System.out.println("****"+lista_request);
        if (action!=null && action.equals("add")) {
        //if (action.equals("add")) {
            String nombre=request.getParameter("nombre");
            String apellido=request.getParameter("apellido");
            String txtEdad = request.getParameter("edad");
            //float edad1 = Float.parseFloat(txtEdad);
            if (nombre!=null && apellido!=null && txtEdad!=null) {
                int edad = 0;
                try {
                    edad = Integer.parseInt(txtEdad);
                } catch(NumberFormatException ex) {
                    System.out.println("Error al convertir el numero");
                    edad=0;
                }
                Amigo amigo = new Amigo();
                //System.out.println(amigo);
                amigo.setNombre(nombre);
                amigo.setApellido(apellido);
                amigo.setEdad(edad);
                ListaAmigos lista = (ListaAmigos) request.getSession().getAttribute("lista");
                if (lista.agregarAmigo(amigo)) {
                    response.sendRedirect("index.jsp?action=add&result=OK");
                } else {
                    response.sendRedirect("index.jsp?action=add&result=ERROR");
                }
            } else {
                response.sendRedirect("index.jsp?action=add&result=ERROR");
            }
        } else if (action!=null && action.equals("delete")) {
            String txtPos = request.getParameter("pos");
            int pos = -1;
            try {
                pos = Integer.parseInt(txtPos);
            } catch(NumberFormatException ex) {
                System.out.println("Error al convertir el numero");
                pos=-1;
            }
            if (pos!=-1) {
                ListaAmigos lista = (ListaAmigos) request.getSession().getAttribute("lista");
                if (lista.eliminarAmigo(pos)) {
                    response.sendRedirect("index.jsp?action=delete&result=OK");
                } else {
                    response.sendRedirect("index.jsp?action=delete&result=ERROR");
                }
            } else {
                response.sendRedirect("index.jsp?action=delete&result=ERROR");
            }
        }
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
