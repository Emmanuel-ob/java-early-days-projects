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
public interface BiodatatableLocalHome extends EJBLocalHome {

    entitypackages.BiodatatableLocal findByPrimaryKey(java.lang.String key)  throws FinderException;
    
    entitypackages.BiodatatableLocal create(java.lang.String key)  throws CreateException;

    Collection findByStudentId(String studentId) throws FinderException;

    Collection findByAge(int age) throws FinderException;

    Collection findByStateOfOrigin(String stateOfOrigin) throws FinderException;

    Collection findByLga(String lga) throws FinderException;

    Collection findByPermHomeAddr(String permHomeAddr) throws FinderException;

    Collection findByContactAddr(String contactAddr) throws FinderException;

    Collection findByMaidenName(String maidenName) throws FinderException;

    Collection findByPhoneNumber(int phoneNumber) throws FinderException;

    Collection findByEmail(String email) throws FinderException;

}
