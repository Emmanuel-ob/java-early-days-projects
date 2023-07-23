/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package exampleclasses;

import java.util.HashMap;
import java.util.Set;
import java.util.TreeSet;

/**
 *
 * @author Admin
 */
public class Sample {
    
    public static void main(String ar[])
    {
        HashMap<String, String> value = new HashMap<>();
        value.put("name", "ola");
        value.put("age", "10");
        value.put("food", "rice");
        
        String food = value.get("food");
        System.out.println(food);
        
        value.put("food", "beans");
        
        food = value.get("food");
        System.out.println(food);
        
        Set<String> t = new TreeSet<>();
        t.add("ola");
        t.add("ade");
        t.add("ola");
        
    }
    
}
