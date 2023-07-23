/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package entitypackages;

import javax.ejb.EJBLocalObject;

/**
 *
 * @author Admin
 */
public interface TrainingLocal extends EJBLocalObject {

    Integer getTrainingId();

    void setTrainingId(Integer trainingId);

    String getTrainingDate();

    void setTrainingDate(String trainingDate);

    String getTrainingTime();

    void setTrainingTime(String trainingTime);

    String getTrainingCenter();

    void setTrainingCenter(String trainingCenter);


}
