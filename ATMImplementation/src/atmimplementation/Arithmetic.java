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
public class Arithmetic {
    
    private double num1;
    private double num2;
    
    public void acceptInput(double n, double s)
    {
        num1 = n;
        num2 = s;
    }
    public double addition()
    {
   double sum = num1 + num2;
  return sum;
//JOptionPane.showMessageDialog(null, "ECOBANK REPLY\nThe additionis" + sum);

    }
public double subtraction()
{
   double sub = num1 - num2; 
   sub =Math.abs(sub);
   
   return sub;
   //JOptionPane.showMessageDialog(null, "ECOBANK REPLY\nThe subtraction" + sub);

}



}
