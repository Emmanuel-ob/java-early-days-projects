/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package helperpackages;

/**
 *
 * @author Admin
 */
public class EmployeeHelper {
private int staffId;
private String surName;
private String otherNames;
private String sex;
private int age;
private String email;
private String department;

    public EmployeeHelper(int staffId, String surName, String otherNames, String sex, int age, String email, String department) {
        this.staffId = staffId;
        this.surName = surName;
        this.otherNames = otherNames;
        this.sex = sex;
        this.age = age;
        this.email = email;
        this.department = department;
    }

    public int getAge() {
        return age;
    }

    public String getDepartment() {
        return department;
    }

    public String getEmail() {
        return email;
    }

    public String getOtherNames() {
        return otherNames;
    }

    public String getSex() {
        return sex;
    }

    public int getStaffId() {
        return staffId;
    }

    public String getSurName() {
        return surName;
    }


}
