/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package overloading;

import javax.swing.JOptionPane;


/**
 *
 * @author Admin
 */
public class Info {
    
    public Info(String name)
    {
        
    }
    
    public Info()
    {
        
    }
  
      public void getInfo()
    {
                 JOptionPane.showMessageDialog(null, "Guy!!! you are nobody");

    }
    
    public void getInfo(String name)
    {
        JOptionPane.showMessageDialog(null, "Guy!!! your name is:" + name);
 
    }
    
        public void getInfo(int age)
        {
        JOptionPane.showMessageDialog(null, "Guy!!! your age is:" + age);

        }
        public void getInfo(String name, int age)
        {
        JOptionPane.showMessageDialog(null, "Guy!!! your name is:" + name + "your age is:" + age);

        }
      
        public void getInfo(int age, String name)
        {
        JOptionPane.showMessageDialog(null, "Guy!!! your age is:" + age + "your name is:" + name);

        }

}
