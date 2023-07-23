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
 * @author Uche
 */
public interface BiodataLocalHome extends EJBLocalHome {

    entitypackages.BiodataLocal findByPrimaryKey(java.lang.String key)  throws FinderException;
    
    entitypackages.BiodataLocal create(java.lang.String key)  throws CreateException;

    Collection findByFirstName(String firstName) throws FinderException;

    Collection findBySurName(String surName) throws FinderException;

    Collection findBySex(String sex) throws FinderException;

    Collection findByAge(int age) throws FinderException;

    Collection findByMaritalStatus(String maritalStatus) throws FinderException;

}
