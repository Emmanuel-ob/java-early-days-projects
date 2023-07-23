/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package compositionexample;

import javax.swing.JOptionPane;

/**
 *
 * @author Admin
 */
public class CompositionExample {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        
      Biodata data;  
     String fname = JOptionPane.showInputDialog("Enter your first name:");
     String lname = JOptionPane.showInputDialog("Enter your last name:");
     int age = Integer.parseInt(JOptionPane.showInputDialog("Enter your age:"));
     

     int day = Integer.parseInt(JOptionPane.showInputDialog("Enter your day:"));
     int month = Integer.parseInt(JOptionPane.showInputDialog("Enter your month:"));
     int year = Integer.parseInt(JOptionPane.showInputDialog("Enter your year:"));

     
     data = new Biodata(fname, lname, age, day, month, year);
     String da = data.getDateOfBirth();
    }
    
}
