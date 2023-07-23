/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package sessionpackages;

import helperpackages.EmployeeHelper;
import java.util.ArrayList;
import javax.ejb.EJBLocalObject;

/**
 *
 * @author Admin
 */
public interface EmployeeLogicLocal extends EJBLocalObject {

    String createEmployee(int staffId, String surName, String otherNames, String sex, int age, String email, String department);

    EmployeeHelper viewEmployee(int staffId);

    String updateEmployee(int staffId, String surName, String otherNames, String sex, int age, String email, String department);

    String deleteEmployer(int staffId);

    ArrayList viewAllEmployee();
    
}
