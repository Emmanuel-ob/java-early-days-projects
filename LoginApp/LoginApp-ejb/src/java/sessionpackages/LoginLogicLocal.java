/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package sessionpackages;

import helperpackages.LoginHelper;
import javax.ejb.EJBLocalObject;

/**
 *
 * @author Admin
 */
public interface LoginLogicLocal extends EJBLocalObject {

    String signUp(String userId, String password, String role, String status);

    String createBiodata(String userId, String surName, String otherNames, String sex, String nationality);

    LoginHelper viewLoginData(String userId);

    String authenticate(String userId);

    String getPassWordHint(String userId);
    
}
