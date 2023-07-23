/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package interestcalculationapp;

import javax.swing.JOptionPane;

/**
 *
 * @author Admin
 */
public class InterestCalculationApp {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        
        SimpleInterest simInt = new SimpleInterest();
        
        String prstr = JOptionPane.showInputDialog("Enter the principal");
        double principal = Double.parseDouble(prstr);
        
         String rstr = JOptionPane.showInputDialog("Enter the rate");
        double rate = Double.parseDouble(rstr);
        
         String tmstr = JOptionPane.showInputDialog("Enter the time");
        int time = Integer.parseInt(tmstr);
        
        simInt.init(principal, rate, time);
        double ans = simInt.getSimpleInterest();
        
        JOptionPane.showMessageDialog(null, "SIMPLE INTEREST IS: " + ans);
        
    }
    
}
