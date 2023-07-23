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
 * @author Obute
 */
public interface ComplainLocalHome extends EJBLocalHome {

    entitypackages.ComplainLocal findByPrimaryKey(java.lang.String key)  throws FinderException;
    
    entitypackages.ComplainLocal create(java.lang.String key)  throws CreateException;

    Collection findByComplainId(Integer complainId) throws FinderException;

    Collection findByCustomerId(String customerId) throws FinderException;

    Collection findByTicketNo(String ticketNo) throws FinderException;

    Collection findByAssignedTo(String assignedTo) throws FinderException;

    Collection findByDateReported(String dateReported) throws FinderException;

    Collection findByDateResolved(String dateResolved) throws FinderException;

    Collection findByProblemDescription(String problemDescription) throws FinderException;

    Collection findByTicketStatus(String ticketStatus) throws FinderException;

    Collection findByAll() throws FinderException;

}
