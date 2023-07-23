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
public interface TeamLocal extends EJBLocalObject {

    String getEmail();

    void setEmail(String email);

    String getTitle();

    void setTitle(String title);


}
