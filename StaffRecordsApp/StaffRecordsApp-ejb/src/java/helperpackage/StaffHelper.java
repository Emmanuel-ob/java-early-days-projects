/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package helperpackage;

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
    private String department;
    public StaffHelper(String id, String lastname, String firstname, String sex, int age, String department) {
        this.id = id;
        this.lastname = lastname;
        this.firstname = firstname;
        this.sex = sex;
        this.age = age;
        this.department = department;
    }

    /**
     * @return the id
     */
    public String getId() {
        return id;
    }

    /**
     * @return the lastname
     */
    public String getLastname() {
        return lastname;
    }

    /**
     * @return the firstname
     */
    public String getFirstname() {
        return firstname;
    }

    /**
     * @return the sex
     */
    public String getSex() {
        return sex;
    }

    /**
     * @return the age
     */
    public int getAge() {
        return age;
    }

    /**
     * @return the department
     */
    public String getDepartment() {
        return department;
    }



}
