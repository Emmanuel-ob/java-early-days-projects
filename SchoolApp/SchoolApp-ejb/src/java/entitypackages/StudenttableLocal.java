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
public interface StudenttableLocal extends EJBLocalObject {

    String getStudentId();

    void setStudentId(String studentId);

    String getSurName();

    void setSurName(String surName);

    String getOtherNames();

    void setOtherNames(String otherNames);

    String getFaculty();

    void setFaculty(String faculty);

    String getDepartment();

    void setDepartment(String department);

    String getCourse();

    void setCourse(String course);

    String getLevel();

    void setLevel(String level);


}
