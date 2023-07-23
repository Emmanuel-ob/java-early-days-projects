/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package sessionpackages;

import helperpackages.SchoolHelper;
import java.util.ArrayList;
import javax.ejb.EJBLocalObject;

/**
 *
 * @author Admin
 */
public interface SchoolLogicLocal extends EJBLocalObject {

    void createUser(String userId, String password, String role, String status);

    void createStudent(String studentId, String surName, String otherNames, String faculty, String department, String course, String level);

    void createBiodata(String studentId, int age, String stateOfOrigin, String lga, String permHomeAddr, String contactAddr, String maidenName, int phoneNumber, String email);

    SchoolHelper viewUser(String userId);

    String updateUser(String userId, String password, String role, String status);

    String authenticate(String userId);

    void createState(String stateId, String state);

    void createLga(String lgaId, String lgaName, String state);

    ArrayList viewAllState();

    ArrayList viewAllLga();

    ArrayList ViewByState(String state);

    String deleteUser(String userId);

    ArrayList viewAllUser();
    
}
