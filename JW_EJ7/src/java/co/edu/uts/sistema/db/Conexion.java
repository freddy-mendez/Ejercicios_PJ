package co.edu.uts.sistema.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Conexion {
    //private static Conexion conexion;
    private String driver = "com.mysql.cj.jdbc.Driver";
    private String bdName = "parqueadero_2021_1";
    private String url = "jdbc:mysql://localhost:3306/"+bdName+"?serverTimezone=America/Bogota";
    private String user="root";
    private String password = "";
    private Connection con;
    
    private Conexion() {
        try {
            //Class.forName(driver);
            con = DriverManager.getConnection(url, user, password);
        } catch (SQLException ex) {
            Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public static Conexion getInstance() {
        /*if (conexion==null) {
            conexion=new Conexion();
        }
        return conexion;*/
        return new Conexion();
    }
    
    public Connection getConnection() {
        return con;
    }
    
}
