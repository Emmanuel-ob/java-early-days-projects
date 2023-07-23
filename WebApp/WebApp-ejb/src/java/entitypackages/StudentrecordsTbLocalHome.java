/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package entitypackages;

import java.util.Collection;
import javax.ejb.CreateException;
import javax.ejb.EJBLocalHome;
import javax.ejb.FinderException;

/**
 *
 * @author Admin
 */
public interface StudentrecordsTbLocalHome extends EJBLocalHome {

    entitypackages.StudentrecordsTbLocal findByPrimaryKey(java.lang.String key)  throws FinderException;
    
    entitypackages.StudentrecordsTbLocal create(java.lang.String key)  throws CreateException;

    Collection findById(String id) throws FinderException;

    Collection findBySurName(String surName) throws FinderException;

    Collection findByOtherName(String otherName) throws FinderException;

    Collection findBySex(String sex) throws FinderException;

    Collection findByCourse(String course) throws FinderException;

}
