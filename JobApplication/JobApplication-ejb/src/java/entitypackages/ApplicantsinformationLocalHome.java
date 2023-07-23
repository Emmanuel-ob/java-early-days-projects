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
public interface ApplicantsinformationLocalHome extends EJBLocalHome {

    entitypackages.ApplicantsinformationLocal findByPrimaryKey(java.lang.String key)  throws FinderException;
    
    entitypackages.ApplicantsinformationLocal create(java.lang.String key)  throws CreateException;

    Collection findByEmail(String email) throws FinderException;

    Collection findBySurname(String surname) throws FinderException;

    Collection findByOthername(String othername) throws FinderException;

    Collection findBySex(String sex) throws FinderException;

    Collection findByAge(int age) throws FinderException;

}
