/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package sessionpackages;

import helperpackages.TrainingHelper;
import java.util.ArrayList;
import javax.ejb.EJBLocalObject;

/**
 *
 * @author Admin
 */
public interface TrainingLogicLocal extends EJBLocalObject {

    String createTraining(int trainingId, String trainingDate, String trainingTime, String trainingCenter);

    TrainingHelper viewTraining(int trainingId);

    ArrayList viewAllTraining();
    
}
