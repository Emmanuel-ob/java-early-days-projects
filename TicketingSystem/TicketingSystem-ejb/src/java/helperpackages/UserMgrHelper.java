/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package helperpackages;

/**
 *
 * @author Obute
 */
public class UserMgrHelper {
    private String email;
    private String role;
    private String status;
    private String firstName;
    private String lastName;

    public UserMgrHelper(String email, String role, String status, String firstName, String lastName) {
        this.email = email;
        this.role = role;
        this.status = status;
        this.firstName = firstName;
        this.lastName = lastName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }


}
