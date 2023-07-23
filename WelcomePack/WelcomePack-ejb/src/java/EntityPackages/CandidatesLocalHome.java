/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package EntityPackages;

import java.util.Collection;
import javax.ejb.CreateException;
import javax.ejb.EJBLocalHome;
import javax.ejb.FinderException;

/**
 *
 * @author Obute
 */
public interface CandidatesLocalHome extends EJBLocalHome {

    EntityPackages.CandidatesLocal findByPrimaryKey(java.lang.Integer key)  throws FinderException;
    
    EntityPackages.CandidatesLocal create(java.lang.Integer key)  throws CreateException;

    Collection findByCandidateId(Integer candidateId) throws FinderException;

    Collection findByCandidateName(String candidateName) throws FinderException;

    Collection findByCenterId(int centerId) throws FinderException;

    Collection findByCategoryId(int categoryId) throws FinderException;

}
