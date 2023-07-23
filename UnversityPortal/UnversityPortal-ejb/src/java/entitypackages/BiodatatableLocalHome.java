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
public interface BiodatatableLocalHome extends EJBLocalHome {

    entitypackages.BiodatatableLocal findByPrimaryKey(java.lang.String key)  throws FinderException;
    
    entitypackages.BiodatatableLocal create(java.lang.String key)  throws CreateException;

    Collection findByUserId(String userId) throws FinderException;

    Collection findBySurName(String surName) throws FinderException;

    Collection findByFirstName(String firstName) throws FinderException;

    Collection findByOtherName(String otherName) throws FinderException;

    Collection findByMaidenName(String maidenName) throws FinderException;

    Collection findBySex(String sex) throws FinderException;

    Collection findByMaritalStatus(String maritalStatus) throws FinderException;

    Collection findByDob(String dob) throws FinderException;

    Collection findByPermHomeAddr(String permHomeAddr) throws FinderException;

    Collection findByContactAddr(String contactAddr) throws FinderException;

    Collection findByStateOfOrigin(String stateOfOrigin) throws FinderException;

    Collection findByLocalGovt(String localGovt) throws FinderException;

    Collection findByHomeTown(String homeTown) throws FinderException;

    Collection findByCountry(String country) throws FinderException;

    Collection findByPhoneNumber(int phoneNumber) throws FinderException;

    Collection findByEmail(String email) throws FinderException;

}
