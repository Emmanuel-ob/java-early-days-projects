/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package EntityPackages;

import javax.ejb.EJBLocalObject;

/**
 *
 * @author Obute
 */
public interface CentresLocal extends EJBLocalObject {

    Integer getCentreId();

    void setCentreId(Integer centreId);

    String getCentreName();

    void setCentreName(String centreName);


}
