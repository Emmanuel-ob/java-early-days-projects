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
public interface BiodataLocal extends EJBLocalObject {

    String getUserId();

    void setUserId(String userId);

    String getSurName();

    void setSurName(String surName);

    String getOtherNames();

    void setOtherNames(String otherNames);

    String getSex();

    void setSex(String sex);

    String getNationality();

    void setNationality(String nationality);


}
