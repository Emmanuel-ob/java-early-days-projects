/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package sessionpackages;

import helperpackages.BiodataHelper;
import helperpackages.UsersHelper;
import java.util.ArrayList;
import javax.ejb.EJBLocalObject;

/**
 *
 * @author Uche
 */
public interface UniversityLogicLocal extends EJBLocalObject {

    String createUser(String userId, String password, String role, String status);

    String updateUser(String userId, String password, String role, String status);

    UsersHelper viewUsers(String userId);

    String createBiodata(String userId, String surName, String firstName, String otherName, String maidenName, String sex, String maritalStatus, String dob, String permHomeAddr, String contactAddr, String stateOfOrigin, String localGovt, String homeTown, String country, long phoneNumber, String email);

    String updateBiodata(String userId, String surName, String firstName, String otherName, String maidenName, String sex, String maritalStatus, String dob, String permHomeAddr, String contactAddr, String stateOfOrigin, String localGovt, String homeTown, String country, long phoneNumber, String email);

    BiodataHelper viewBiodata(String userId);

    String validateUser(String userId);

    String validatePassword(String userId);

    ArrayList viewAllState();

    ArrayList viewAllLga();

    ArrayList viewByState(String state);
    
}
