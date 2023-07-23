/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package inheritanceimp;

import javax.swing.JOptionPane;



/**
 *
 * @author Admin
 */
public class InheritanceImp {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
  
        Shape sh;
        sh = new Cylinder();
        
    String radStr = JOptionPane.showInputDialog("CYLINDER\nEnter the radius");
   double radius = Double.parseDouble(radStr);
   
  String heiStr = JOptionPane.showInputDialog("CYLINDER\nEnter the height");
  double height = Double.parseDouble(heiStr);

  sh.init(radius, height);
  double result = sh.getCurveSurfaceArea();
  JOptionPane.showMessageDialog(null, "The area of the cylinder is " + result);
    
  
  //Cone operation start here
  
   sh = new Cone();
  
    String radStr2 = JOptionPane.showInputDialog("CONE\nEnter the radius: ");
   double radius2 = Double.parseDouble(radStr2);
   
  String heiStr2 = JOptionPane.showInputDialog("CONE\nEnter the height");
  double height2 = Double.parseDouble(heiStr2);

  sh.init(radius, height);
  double cur = sh.getCurveSurfaceArea();
  JOptionPane.showMessageDialog(null, "The area of the cylinder is " + cur);
    }
    
}
