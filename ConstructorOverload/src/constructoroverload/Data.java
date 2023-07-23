/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package constructoroverload;

/**
 *
 * @author Admin
 */
public class Data {
    
    private String firstName;
    private String lastName;
    private int age;
    private double height;
    
    public Data(String firstname,String lastName, int age, double height)
    {
        this.firstName = firstName;
        this.lastName = lastName;
        this.age = age;
        this.height = height;
        
    }
    
     public Data(String firstname,int age, double height)
    {
        this.firstName = firstName;
        this.age = age;
        this.height = height;  
    }
    
      public Data(String firstname,int age)
    {
        this.firstName = firstName;
        this.age = age; 
    }

}
