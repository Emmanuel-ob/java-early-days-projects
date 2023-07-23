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
public interface MyLogicLocal extends EJBLocalObject {

    void createRecord(String id, String surName, String otherNames, String sex, int age, String email, String department);

    void updateRecord(String id, String surName, String otherNames, String sex, int age, String email, String department);
    
}
