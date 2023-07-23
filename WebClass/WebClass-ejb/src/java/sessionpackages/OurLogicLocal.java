/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package sessionpackages;

import javax.ejb.EJBLocalObject;

/**
 *
 * @author Uche
 */
public interface OurLogicLocal extends EJBLocalObject {

    String createBiodata(String firstName, String surName, String sex, int age, String maritalStatus, String dateTime);
    
}
