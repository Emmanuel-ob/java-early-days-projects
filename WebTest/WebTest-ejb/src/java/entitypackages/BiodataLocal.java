/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package entitypackages;

import javax.ejb.EJBLocalObject;

/**
 *
 * @author Uche
 */
public interface BiodataLocal extends EJBLocalObject {

    String getFirtName();

    void setFirtName(String firtName);

    String getSurName();

    void setSurName(String surName);


}
