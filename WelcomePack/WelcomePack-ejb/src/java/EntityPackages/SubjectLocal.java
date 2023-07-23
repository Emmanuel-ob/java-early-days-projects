/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package EntityPackages;

import javax.ejb.EJBLocalObject;

/**
 *
 * @author Obute
 */
public interface SubjectLocal extends EJBLocalObject {

    Integer getSubjectId();

    void setSubjectId(Integer subjectId);

    String getSubjectName();

    void setSubjectName(String subjectName);

    int getCategoryId();

    void setCategoryId(int categoryId);


}
