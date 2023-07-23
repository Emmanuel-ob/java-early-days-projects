/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package sessionpackages;

import helperpackages.StaffHelper;
import javax.ejb.EJBLocalObject;

/**
 *
 * @author Admin
 */
public interface OurLogicLocal extends EJBLocalObject {

    public void createRecord(int id, String lastName, String firstName, String sex, int age, String email, String department);

    StaffHelper viewRecord(int id);
    
}
