package co.edu.uts.sistema.modelo;

import java.sql.Date;

public class Vehiculo {
    private int id;
    private String placa;
    private Date fechaHoraIngreso;
    private Date fechaHoraSalida;
    private int estado;

    public Vehiculo(int id, String placa, Date fechaHoraIngreso, Date fechaHoraSalida, int estado) {
        this.id = id;
        this.placa = placa;
        this.fechaHoraIngreso = fechaHoraIngreso;
        this.fechaHoraSalida = fechaHoraSalida;
        this.estado = estado;
    }

    public int getId() {
        return id;
    }

    public String getPlaca() {
        return placa;
    }

    public void setPlaca(String placa) {
        this.placa = placa;
    }

    public Date getFechaHoraIngreso() {
        return fechaHoraIngreso;
    }

    public void setFechaHoraIngreso(Date fechaHoraIngreso) {
        this.fechaHoraIngreso = fechaHoraIngreso;
    }

    public Date getFechaHoraSalida() {
        return fechaHoraSalida;
    }

    public void setFechaHoraSalida(Date fechaHoraSalida) {
        this.fechaHoraSalida = fechaHoraSalida;
    }

    public int getEstado() {
        return estado;
    }

    public void setEstado(int estado) {
        this.estado = estado;
    }

    @Override
    public String toString() {
        return "Vehiculo{" + "id=" + id + ", placa=" + placa + ", fechaHoraIngreso=" + fechaHoraIngreso + ", fechaHoraSalida=" + fechaHoraSalida + ", estado=" + estado + '}';
    }
    
    public String getTrHtml() {
        String tr = "<tr>";
        tr += "<td>"+getId()+"</td>";
        tr += "<td>"+getPlaca()+"</td>";
        tr += "<td>"+getFechaHoraIngreso()+"</td>";
        tr += "<td>"+getFechaHoraSalida()+"</td>";
        tr += "<td>"+((getEstado()==0)?"Activo":"Pago")+"</td>";
        tr += "<td></td>";
        tr+="</tr>";
        return tr;
    }
    
  /*  public String getJson() {
        String tr = "{";
        tr += "\"id\":"+getId()+",";
        tr += "\"placa\":\""+getPlaca()+"\",";
        tr += "\"fechaHoraIngreso\":\""+getFechaHoraIngreso()+"\",";
        tr += "\"fechaHoraSalida\":\""+getFechaHoraSalida()+"\",";
        tr += "\"estado\":"+getEstado()+"}";
        return tr;
    }*/
    
}
