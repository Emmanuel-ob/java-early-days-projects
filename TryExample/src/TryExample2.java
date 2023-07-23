
import javax.swing.JOptionPane;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Admin
 */
public class TryExample2 {
    public static double calculate(int i, int j) throws ArithmeticException
    {
      double ans =(double)i/j;
      return ans;
    }
    
    public static void main(String a [])
    {
        try
        {
         String fNumStr = JOptionPane.showInputDialog("Enter the first number:");
        int fNumInt = Integer.parseInt(fNumStr);
        
        String sNumStr = JOptionPane.showInputDialog("Enter the second number:");
        int sNumInt = Integer.parseInt(sNumStr);
        double answer = calculate(fNumInt, sNumInt);
        
        JOptionPane.showMessageDialog(null, "Tour result is:" + answer);
        }
        catch(NumberFormatException ex)
        {
         JOptionPane.showMessageDialog(null, "Invalid input");

        }
        catch(ArithmeticException ex)
        {
          JOptionPane.showMessageDialog(null, "Zero is not allowed");

        }
    }
    
}
