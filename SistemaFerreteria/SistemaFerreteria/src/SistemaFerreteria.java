
import javax.swing.JButton;
import javax.swing.JDialog;
import javax.swing.JFrame;
import javax.swing.LookAndFeel;
import javax.swing.UIManager;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Cristian Pisco Intriago
 */
public class SistemaFerreteria {

    /**
     * @param args the command line arguments
     */
    //com.sun.java.swing.plaf.nimbus.NimbusLookAndFeel || com.oyoaha.swing.plaf.oyoaha.OyoahaLookAndFeel
    public static void main(String[] args) {
         try{
           JFrame.setDefaultLookAndFeelDecorated(true);
           JDialog.setDefaultLookAndFeelDecorated(true);
           
           UIManager.setLookAndFeel("com.seaglasslookandfeel.SeaGlassLookAndFeel");
        }
        catch (Exception e){
           e.printStackTrace();
        }
         
        VentanaPrincipal ventana = new VentanaPrincipal();
        ventana.setVisible(true);
    }
    
}
