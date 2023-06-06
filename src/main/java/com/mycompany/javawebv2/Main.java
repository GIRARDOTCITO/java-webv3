
package com.mycompany.javawebv2;

import java.sql.SQLException;
import java.util.List;



public class Main {
    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        //conexiondb.getConexion();
        //System.out.println("conexion exitosa");
        MensajeDao mensajeDao = new MensajeDao();
        
        //Mensaje msm = new Mensaje("Hola desde Main", "Main");
        //int registro = mensajeDao.Insertar(msm);
        //System.out.println("Se inserto" + registro + "registro");
        
        //Mensaje msm = new Mensaje(3, "Hola desde java web", "Java Web");  
        //int registro = mensajeDao.Editar(msm);
        //System.out.println("Se edito" + registro + "registro");
        
        //Mensaje msm = new Mensaje(3);  
        //int registro = mensajeDao.Eliminar(msm);
        //System.out.println("Se Elimino" + registro + "registro");
        List<Mensaje> mensajes = mensajeDao.seleccionar();
        
        for (Mensaje mensaje : mensajes ){
            System.out.println(mensaje);
        }
    }
}
