/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package inheritanceimp;

/**
 *
 * @author Admin
 */
public class Cone extends ThreeDimentional {
    
   
    private double length;
    
    @Override
  public void init(double radius, double height)
  {
   double l = Math.sqrt(Math.pow(radius, 2) + Math.pow(height, 2));
   length = l;
   
   super.init(radius, height);
  }
    
    @Override
  public double getCurveSurfaceArea(){
      
      double area = 2*Math.PI*getRadius()*length;
      return area;
  }
}

