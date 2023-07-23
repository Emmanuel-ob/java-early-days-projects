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
public class Cylinder extends ThreeDimentional {
   
    @Override
    public double getCurveSurfaceArea()
    {
        double ans = 2* Math.PI * getRadius() * getHeight();
        return ans;
        
    }

    
    
    
}
