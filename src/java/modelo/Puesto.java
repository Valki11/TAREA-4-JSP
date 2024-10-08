/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelo;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;

/**
 *
 * @author keila
 */
public class Puesto {
    private int id_puestos;
    private String puesto;
    private Conexion cn;
    
    public Puesto(int id_puesto, String puesto) {
        this.id_puestos = id_puesto;
        this.puesto = puesto;
    }

    public Puesto() {
    }
     
    public int getId_puesto() {
        return id_puestos;
    }

    public String getPuesto() {
        return puesto;
    }

    public void setId_puesto(int id_puesto) {
        this.id_puestos = id_puesto;
    }

    public void setPuesto(String puesto) {
        this.puesto = puesto;
    }
    
    public HashMap<String, String> drop_puestos() {
        HashMap<String, String> drop = new HashMap<>();
        try {
            cn = new Conexion();
            String query = "SELECT id_puestos AS id, puesto FROM puestos;";
            cn.abrir_conexion();
            ResultSet consulta = cn.conexionBD.createStatement().executeQuery(query);
            while (consulta.next()) {
                drop.put(consulta.getString("id_puestos"), consulta.getString("puesto"));
            }
            cn.cerrar_conexion();
        } catch (SQLException ex) {
            System.out.println("Error en la consulta: " + ex.getMessage());
            // Puedes lanzar una excepción aquí o manejarlo de otra forma.
        }
        return drop;
    }
}
