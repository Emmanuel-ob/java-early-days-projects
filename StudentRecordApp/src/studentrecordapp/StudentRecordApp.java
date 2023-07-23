/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package studentrecordapp;

import javax.swing.JOptionPane;

/**
 *
 * @author Admin
 */
public class StudentRecordApp {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        
        
        StudentRecord rec;
        
        String n = JOptionPane.showInputDialog("Enter your name: ");
        
        String aStr = JOptionPane.showInputDialog("Enter your age: ");
        int age = Integer.parseInt(aStr);
        
        String cStr = JOptionPane.showInputDialog("Enter your class: ");
        int cInt = Integer.parseInt(cStr);
  
     rec = new StudentRecord(n,age, cInt);
     String show = rec.getRecord();
     JOptionPane.showMessageDialog(null, show);
     

    }
    
}
