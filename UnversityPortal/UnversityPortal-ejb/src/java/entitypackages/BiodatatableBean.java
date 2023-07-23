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
 * @author Uche
 */
public abstract class BiodatatableBean implements EntityBean {

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
this.setUserId(key);
        return null;
    }

    public void ejbPostCreate(java.lang.String key) {
        // TODO populate relationships here if appropriate
    }

    public abstract String getUserId();

    public abstract void setUserId(String userId);

    public abstract String getSurName();

    public abstract void setSurName(String surName);

    public abstract String getFirstName();

    public abstract void setFirstName(String firstName);

    public abstract String getOtherName();

    public abstract void setOtherName(String otherName);

    public abstract String getMaidenName();

    public abstract void setMaidenName(String maidenName);

    public abstract String getSex();

    public abstract void setSex(String sex);

    public abstract String getMaritalStatus();

    public abstract void setMaritalStatus(String maritalStatus);

    public abstract String getDob();

    public abstract void setDob(String dob);

    public abstract String getPermHomeAddr();

    public abstract void setPermHomeAddr(String permHomeAddr);

    public abstract String getContactAddr();

    public abstract void setContactAddr(String contactAddr);

    public abstract String getStateOfOrigin();

    public abstract void setStateOfOrigin(String stateOfOrigin);

    public abstract String getLocalGovt();

    public abstract void setLocalGovt(String localGovt);

    public abstract String getHomeTown();

    public abstract void setHomeTown(String homeTown);

    public abstract String getCountry();

    public abstract void setCountry(String country);

    public abstract long getPhoneNumber();

    public abstract void setPhoneNumber(long phoneNumber);

    public abstract String getEmail();

    public abstract void setEmail(String email);

}