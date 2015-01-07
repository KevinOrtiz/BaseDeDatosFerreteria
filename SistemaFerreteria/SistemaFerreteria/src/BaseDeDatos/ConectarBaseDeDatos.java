/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package BaseDeDatos;
import  java.sql.*;
import javax.swing.JOptionPane;
import java.util.logging.Level;
import java.util.logging.Logger;
/**
 *
 * @author kevin Andres Ortiz Merchan
 */
public class ConectarBaseDeDatos {
protected Connection conn;

public void conectar(String servidor,String bd,String usuario,String password) throws ClassNotFoundException, SQLException
{
    Class.forName("com.mysql.jdbc.Driver");
    this.conn=DriverManager.getConnection("jdbc:mysql://"+servidor+"/"+bd,usuario,password);
}



public void acceder()
{
    try {
        //Aqui debe cambiar con los datos que tienen registrados en su base de datos
        this.conectar("127.0.0.1","FerreteriaSA","root","263605");
        JOptionPane.showMessageDialog(null,"Se ha conectado correctamente con la base de datos");
    } catch (ClassNotFoundException | SQLException ex) {
        Logger.getLogger(ConectarBaseDeDatos.class.getName()).log(Level.SEVERE, null, ex);
    }
}
    
}
