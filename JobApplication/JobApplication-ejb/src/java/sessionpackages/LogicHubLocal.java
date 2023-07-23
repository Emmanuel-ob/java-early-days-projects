/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package sessionpackages;

import javax.ejb.EJBLocalObject;

/**
 *
 * @author Admin
 */
public interface LogicHubLocal extends EJBLocalObject {

    void createApplication(String email, String surname, String othername, String sex, String age, byte cv, byte passport);
    
}
