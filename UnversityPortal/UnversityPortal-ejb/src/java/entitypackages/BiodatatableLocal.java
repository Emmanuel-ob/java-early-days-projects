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
public interface BiodatatableLocal extends EJBLocalObject {

    String getUserId();

    void setUserId(String userId);

    String getSurName();

    void setSurName(String surName);

    String getFirstName();

    void setFirstName(String firstName);

    String getOtherName();

    void setOtherName(String otherName);

    String getMaidenName();

    void setMaidenName(String maidenName);

    String getSex();

    void setSex(String sex);

    String getMaritalStatus();

    void setMaritalStatus(String maritalStatus);

    String getDob();

    void setDob(String dob);

    String getPermHomeAddr();

    void setPermHomeAddr(String permHomeAddr);

    String getContactAddr();

    void setContactAddr(String contactAddr);

    String getStateOfOrigin();

    void setStateOfOrigin(String stateOfOrigin);

    String getLocalGovt();

    void setLocalGovt(String localGovt);

    String getHomeTown();

    void setHomeTown(String homeTown);

    String getCountry();

    void setCountry(String country);

    long getPhoneNumber();

    void setPhoneNumber(long phoneNumber);

    String getEmail();

    void setEmail(String email);


}
