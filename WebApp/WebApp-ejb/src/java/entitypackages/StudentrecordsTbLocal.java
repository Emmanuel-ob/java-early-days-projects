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
public interface StudentrecordsTbLocal extends EJBLocalObject {

    String getId();

    void setId(String id);

    String getSurName();

    void setSurName(String surName);

    String getOtherName();

    void setOtherName(String otherName);

    String getSex();

    void setSex(String sex);

    String getCourse();

    void setCourse(String course);


}
