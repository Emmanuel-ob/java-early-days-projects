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
public abstract class ThreeDimentionalextend Shape {
       private double radius;
    private double height;
    
    public void init(double radius, double height)
    {
        this.radius = radius;
        this.height = height;
    }
    
//    public abstract double getCurveSurfaceArea();
    public double getRadius() {
        return radius;
    }

    public void setRadius(double radius) {
        this.radius = radius;
    }

    public double getHeight() {
        return height;
    }

    public void setHeight(double height) {
        this.height = height;
    }
}
