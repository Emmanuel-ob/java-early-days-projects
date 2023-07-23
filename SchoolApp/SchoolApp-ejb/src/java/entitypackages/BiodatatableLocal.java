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
public interface BiodatatableLocal extends EJBLocalObject {

    String getStudentId();

    void setStudentId(String studentId);

    int getAge();

    void setAge(int age);

    String getStateOfOrigin();

    void setStateOfOrigin(String stateOfOrigin);

    String getLga();

    void setLga(String lga);

    String getPermHomeAddr();

    void setPermHomeAddr(String permHomeAddr);

    String getContactAddr();

    void setContactAddr(String contactAddr);

    String getMaidenName();

    void setMaidenName(String maidenName);

    int getPhoneNumber();

    void setPhoneNumber(int phoneNumber);

    String getEmail();

    void setEmail(String email);


}
