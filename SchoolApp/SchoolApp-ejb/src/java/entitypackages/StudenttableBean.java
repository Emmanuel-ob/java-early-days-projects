/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package entitypackages;

import javax.ejb.CreateException;
import javax.ejb.EntityBean;
import javax.ejb.EntityContext;

/**
 *
 * @author Admin
 */
public abstract class StudenttableBean implements EntityBean {

    private EntityContext context;
    
    // <editor-fold defaultstate="collapsed" desc="EJB infrastructure methods. Click on the + sign on the left to edit the code.">

    // TODO Consider creating Transfer Object to encapsulate data
    // TODO Review finder methods

    /**
     * @see javax.ejb.EntityBean#setEntityContext(javax.ejb.EntityContext)
     */
    public void setEntityContext(EntityContext aContext) {
        context = aContext;
    }
    
    /**
     * @see javax.ejb.EntityBean#ejbActivate()
     */
    public void ejbActivate() {
        
    }
    
    /**
     * @see javax.ejb.EntityBean#ejbPassivate()
     */
    public void ejbPassivate() {
        
    }
    
    /**
     * @see javax.ejb.EntityBean#ejbRemove()
     */
    public void ejbRemove() {
        
    }
    
    /**
     * @see javax.ejb.EntityBean#unsetEntityContext()
     */
    public void unsetEntityContext() {
        context = null;
    }
    
    /**
     * @see javax.ejb.EntityBean#ejbLoad()
     */
    public void ejbLoad() {
        
    }
    
    /**
     * @see javax.ejb.EntityBean#ejbStore()
     */
    public void ejbStore() {
        
    }

    // </editor-fold>
    
    
    public java.lang.String ejbCreate(java.lang.String key)  throws CreateException {
        if (key == null) {
            throw new CreateException("The field \"key\" must not be null");
        }
        
        // TODO add additional validation code, throw CreateException if data is not valid
this.setStudentId(key);
        return null;
    }

    public void ejbPostCreate(java.lang.String key) {
        // TODO populate relationships here if appropriate
    }

    public abstract String getStudentId();

    public abstract void setStudentId(String studentId);

    public abstract String getSurName();

    public abstract void setSurName(String surName);

    public abstract String getOtherNames();

    public abstract void setOtherNames(String otherNames);

    public abstract String getFaculty();

    public abstract void setFaculty(String faculty);

    public abstract String getDepartment();

    public abstract void setDepartment(String department);

    public abstract String getCourse();

    public abstract void setCourse(String course);

    public abstract String getLevel();

    public abstract void setLevel(String level);

}
