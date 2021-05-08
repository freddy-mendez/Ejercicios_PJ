package co.edu.uts.sistema.db;

import co.edu.uts.sistema.modelo.Vehiculo;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

public class VehiculoDAO {
    private Conexion conexion;

    public VehiculoDAO() {
        conexion=Conexion.getInstance();
    }
    
    public ArrayList<Vehiculo> getVehiculos() {
        ArrayList<Vehiculo> vehiculos = new ArrayList<>();
        Connection con =  conexion.getConnection();
        String sql = "select * from vehiculos";
        try {
            PreparedStatement stm = con.prepareStatement(sql);
            ResultSet result = stm.executeQuery();
            while (result.next()) {
                int id = result.getInt("id");
                String placa = result.getString("placa");
                Date fechaIni = result.getDate(3);
                Date fechaFin = result.getDate(4);
                int estado = result.getInt("estado");
                Vehiculo v = new Vehiculo(id, placa, fechaIni, fechaFin, estado);
                vehiculos.add(v);
            }
        } catch (SQLException ex) {
            Logger.getLogger(VehiculoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return vehiculos;
    }
}
