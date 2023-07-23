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
public interface StaffinformationLocalHome extends EJBLocalHome {

    entitypackages.StaffinformationLocal findByPrimaryKey(java.lang.String key)  throws FinderException;
    
    entitypackages.StaffinformationLocal create(java.lang.String key)  throws CreateException;

    Collection findById(String id) throws FinderException;

    Collection findBySurName(String surName) throws FinderException;

    Collection findByOtherNames(String otherNames) throws FinderException;

    Collection findBySex(String sex) throws FinderException;

    Collection findByAge(int age) throws FinderException;

    Collection findByEmail(String email) throws FinderException;

    Collection findByDepartment(String department) throws FinderException;

}
