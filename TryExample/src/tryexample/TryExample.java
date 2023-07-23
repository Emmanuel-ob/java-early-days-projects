/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package tryexample;

import javax.swing.JOptionPane;

/**
 *
 * @author Admin
 */
public class TryExample {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        
        
        try
        {
        String fNumStr = JOptionPane.showInputDialog("Enter the first number:");
        int fNumInt = Integer.parseInt(fNumStr);
        
        String sNumStr = JOptionPane.showInputDialog("Enter the second number:");
        int sNumInt = Integer.parseInt(sNumStr);
        
        int sum = fNumInt + sNumInt;
        
        JOptionPane.showMessageDialog(null,"The result is: " + sum);
        }
        catch(NumberFormatException ex)
        {
            JOptionPane.showMessageDialog(null,"Letters are not allowed");
        }
        catch(ArithmeticException ex)
        {
            JOptionPane.showMessageDialog(null, "Division by zero is not allowed");
        }
        catch(Exception ex)
        {
         JOptionPane.showMessageDialog(null,"" );
        }
        
                    JOptionPane.showMessageDialog(null,"THE END..." );

    }
    
}
