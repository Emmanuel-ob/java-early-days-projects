/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package entitypackages;

import javax.ejb.EJBLocalObject;

/**
 *
 * @author Admin
 */
public interface StaffrecordpracticeLocal extends EJBLocalObject {

    Integer getId();

    void setId(Integer id);

    String getLastName();

    void setLastName(String lastName);

    String getFirstName();

    void setFirstName(String firstName);

    String getSex();

    void setSex(String sex);

    int getAge();

    void setAge(int age);

    String getEmail();

    void setEmail(String email);

    String getDepartment();

    void setDepartment(String department);


}
