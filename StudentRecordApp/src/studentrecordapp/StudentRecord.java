/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package studentrecordapp;

/**
 *
 * @author Admin
 */
public class StudentRecord {
    private String name;
    private int age;
    private int classNo;
    
    public StudentRecord(String name, int age, int classNo)
    {
      this.name = name;
      this.age = age;
      this.classNo = classNo;
    }
    
    public String getRecord()
    {
        String info = name + "\nsep" + age + "\nsep" + classNo;
        return info;
    }
}
