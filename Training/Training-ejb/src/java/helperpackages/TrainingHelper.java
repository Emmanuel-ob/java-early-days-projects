/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package helperpackages;

/**
 *
 * @author Admin
 */
public class TrainingHelper {
    private int traingId;
    private String traingDate;
    private String traingTime;
    private String traingCenter;

    public TrainingHelper(int traingId, String traingDate, String traingTime, String traingCenter) {
        this.traingId = traingId;
        this.traingDate = traingDate;
        this.traingTime = traingTime;
        this.traingCenter = traingCenter;
    }

    public String getTraingCenter() {
        return traingCenter;
    }

    public String getTraingDate() {
        return traingDate;
    }

    public int getTraingId() {
        return traingId;
    }

    public String getTraingTime() {
        return traingTime;
    }



}
