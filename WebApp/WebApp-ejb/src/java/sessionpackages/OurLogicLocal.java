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
public interface OurLogicLocal extends EJBLocalObject {

    String createStudentRecord(String id, String surName, String otherName, String sex, String course);
    
}
