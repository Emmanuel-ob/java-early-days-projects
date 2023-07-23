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
public class DateOfBirth {
    
    private int day;
    private int month;
    private int year;

public DateOfBirth(int day, int month, int year)
{
    this.day = day;
    this.month = month;
    this.year = year;
}

public String getDateOfBirth()
{
    return String.valueOf(day) + ", " + String.valueOf(month) + ", " + String.valueOf(year);
}
    
}
