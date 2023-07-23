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
public class Biodata {
    
    
    private String name;
    private int age;
    private String gender; 
    
    public void saveStudentsRecord(String na, int ag, String gn)
    {
        name = na;
        age = ag;
        gender = gn;
    }
    
public void displayRecord(){
JOptionPane.showMessageDialog(null,"Name: "+ name+ "\n Age: "+ age+ "\n Gender: " + gender);
    
}
    
}
