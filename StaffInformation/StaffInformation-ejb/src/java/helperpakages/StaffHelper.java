/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package helperpakages;

/**
 *
 * @author Admin
 */
public class StaffHelper {
 private String id;
    private String lastname;
    private String firstname;
    private String sex;
    private int age;
    private String email;
    private String department;

    public StaffHelper(String id, String lastname, String firstname, String sex, int age, String email, String department) {
        this.id = id;
        this.lastname = lastname;
        this.firstname = firstname;
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

    public String getFirstname() {
        return firstname;
    }

    public String getId() {
        return id;
    }

    public String getLastname() {
        return lastname;
    }

    public String getSex() {
        return sex;
    }


}
