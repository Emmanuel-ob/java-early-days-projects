/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package sessionpackages;

import helperpackage.StaffHelper;
import javax.ejb.EJBLocalObject;

/**
 *
 * @author Admin
 */
public interface CodeLogicLocal extends EJBLocalObject {

    void createRecords(String id, String lastName, String firstName, String sex, int age, String department);

    StaffHelper viewStaff(String id);
     public String updateRecords(String id, String lastName, String firstName, String sex, int age, String department);
    public String deleteStaff(String id);
}
