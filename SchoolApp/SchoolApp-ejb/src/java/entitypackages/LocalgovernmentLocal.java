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
public interface LocalgovernmentLocal extends EJBLocalObject {

    String getLgaId();

    void setLgaId(String lgaId);

    String getLgaName();

    void setLgaName(String lgaName);

    String getState();

    void setState(String state);


}
