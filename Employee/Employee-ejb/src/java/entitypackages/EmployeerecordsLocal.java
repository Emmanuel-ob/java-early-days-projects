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
public interface EmployeerecordsLocal extends EJBLocalObject {

    Integer getStaffId();

    void setStaffId(Integer staffId);

    String getSurName();

    void setSurName(String surName);

    String getOtherNames();

    void setOtherNames(String otherNames);

    String getSex();

    void setSex(String sex);

    int getAge();

    void setAge(int age);

    String getEmail();

    void setEmail(String email);

    String getDepartment();

    void setDepartment(String department);


}
