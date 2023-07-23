/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package helperpackages;

/**
 *
 * @author Admin
 */
public class LoginHelper {

    private String userId;
    private String password;
    private String role;
    private String status;

    public LoginHelper(String userId, String password, String role, String status) {
        this.userId = userId;
        this.password = password;
        this.role = role;
        this.status = status;
    }

    public String getPassword() {
        return password;
    }

    public String getRole() {
        return role;
    }

    public String getStatus() {
        return status;
    }

    public String getUserId() {
        return userId;
    }


}
