/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package interestcalculationapp;

/**
 *
 * @author Admin
 */
public class SimpleInterest {
    private double principal;
    private double rate;
    private int time;
    
    
    public void init(double principal, double rate, int time)
    {
      this.principal = principal;
      this.rate = rate;
      this.time = time; 
    }
    
    public double getSimpleInterest()
    {
        double simple = principal * rate * time;
        double result = simple/100;
         
        return result;
    }
    
    
}
