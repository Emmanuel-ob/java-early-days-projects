/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package entitypackages;

import javax.ejb.EJBLocalObject;

/**
 *
 * @author Uche
 */
public interface BiodataLocal extends EJBLocalObject {

    String getFirstName();

    void setFirstName(String firstName);

    String getSurName();

    void setSurName(String surName);

    String getSex();

    void setSex(String sex);

    int getAge();

    void setAge(int age);

    String getMaritalStatus();

    void setMaritalStatus(String maritalStatus);

    String getDateTime();

    void setDateTime(String dateTime);


}
