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
public interface StaffrecordsLocal extends EJBLocalObject {

    String getId();

    void setId(String id);

    String getLastName();

    void setLastName(String lastName);

    String getFirstName();

    void setFirstName(String firstName);

    String getSex();

    void setSex(String sex);

    int getAge();

    void setAge(int age);

    String getDepartment();

    void setDepartment(String department);


}
