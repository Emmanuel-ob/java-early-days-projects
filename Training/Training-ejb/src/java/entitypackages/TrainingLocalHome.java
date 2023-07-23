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
public interface TrainingLocalHome extends EJBLocalHome {

    entitypackages.TrainingLocal findByPrimaryKey(java.lang.Integer key)  throws FinderException;
    
    entitypackages.TrainingLocal create(java.lang.Integer key)  throws CreateException;

    Collection findByTrainingId(Integer trainingId) throws FinderException;

    Collection findByTrainingDate(String trainingDate) throws FinderException;

    Collection findByTrainingTime(String trainingTime) throws FinderException;

    Collection findByTrainingCenter(String trainingCenter) throws FinderException;

    Collection findByAllTraining() throws FinderException;

}
