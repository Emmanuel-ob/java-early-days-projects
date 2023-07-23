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
public interface CodeHubLocal extends EJBLocalObject {
   public String createStudentRecord(String id, String surName, String otherName, String sex, String course);
}
