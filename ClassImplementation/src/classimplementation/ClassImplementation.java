/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package classimplementation;

import javax.swing.JOptionPane;

/**
 *
 * @author Admin
 */
public class ClassImplementation {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        
  System.out.println("Class implementation of Biodata");
  
  Biodata b1 = new Biodata();
  Biodata b2 = new Biodata();
  
  String n = JOptionPane.showInputDialog("Enter the name");
  String a = JOptionPane.showInputDialog("Enter the age");
  String g = JOptionPane.showInputDialog("Enter the gender");

int t = Integer.parseInt(a);
b1.saveStudentsRecord(n, t, g);
b2.saveStudentsRecord("THE", 76, "male");

b1.displayRecord();
b2.displayRecord();


//b1.changeName("joshua");


    }
    
}
