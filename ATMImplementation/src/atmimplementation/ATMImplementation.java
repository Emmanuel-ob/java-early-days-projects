/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package atmimplementation;

import javax.swing.JOptionPane;

/**
 *
 * @author Admin
 */
public class ATMImplementation {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        
     Arithmetic arith = new Arithmetic();   
     JOptionPane.showMessageDialog(null, "YOU ARE WELCOME TO ECOBANK\nCLICK OK TO CONTINUE");
    
     String num1Str = JOptionPane.showInputDialog("ENTER YOUR FIRST NUMBER");
    int num1Int = Integer.parseInt(num1Str);
    
    String num2Str = JOptionPane.showInputDialog("ENTER YOUR SECOND NUMBER");
    int num2Int = Integer.parseInt(num2Str);
    
    arith.acceptInput(num1Int, num2Int);
    double ans1 = arith.addition();
    JOptionPane.showMessageDialog(null, "ECOBANK REPLY\nThe addition" + ans1);

    double ans2 = arith.subtraction();
    JOptionPane.showMessageDialog(null, "ECOBANK REPLY\nThe subtraction" + ans2);

}
}
