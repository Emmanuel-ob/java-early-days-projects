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
public interface SemesterregistrationLocal extends EJBLocalObject {

    String getUserId();

    void setUserId(String userId);

    String getFaculty();

    void setFaculty(String faculty);

    String getDepartment();

    void setDepartment(String department);

    String getCourseOfStudy();

    void setCourseOfStudy(String courseOfStudy);

    String getLevel();

    void setLevel(String level);

    String getSession();

    void setSession(String session);

    String getSemester();

    void setSemester(String semester);


}
