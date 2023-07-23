/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package simpleapp;

import java.util.ArrayList;
import javax.swing.JOptionPane;

/**
 *
 * @author Admin
 */
public class ArrayListSample {
    public static void main(String [] a){
        
        ArrayList<String> name = new ArrayList<>();
        
        JOptionPane.showMessageDialog(null, "SIZE: " + name.size());
        name.add("John");
        JOptionPane.showMessageDialog(null, "SIZE: " + name.size());
        name.add("Mikel");
        JOptionPane.showMessageDialog(null, "SIZE: " + name.size());
        name.add("Chioma");
        JOptionPane.showMessageDialog(null, "SIZE: " + name.size());
        name.add("Obi");
        
        JOptionPane.showMessageDialog(null, "SIZE: " + name.size());
        name.remove("John");
        JOptionPane.showMessageDialog(null, "SIZE: " + name.size());
        name.remove("Mikel");
        JOptionPane.showMessageDialog(null, "SIZE: " + name.size());
        name.remove("Chioma");
        JOptionPane.showMessageDialog(null, "SIZE: " + name.size());
        name.remove("Obi");
        
        
        
          
    }
    
}
