/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package compositionexample;

/**
 *
 * @author Admin
 */
public class Biodata {
    private String firstName;
    private String lastName;
    private int age;
    private DateOfBirth dob;
    
    
    public Biodata(String firstName, String lastName, int age, int day, int month, int year)
    {
        this.firstName = firstName;
        this.lastName = lastName;
        this.age = age;
       dob = new DateOfBirth(day, month, year);
    }

    public String getDateOfBirth()
    {
        return dob.getDateOfBirth();
    }
    
}
