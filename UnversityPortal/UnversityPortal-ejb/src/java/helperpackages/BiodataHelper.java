/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package helperpackages;

/**
 *
 * @author Uche
 */
public class BiodataHelper {
    private String userId;
    private String surName;
    private String firstName;
    private String otherName;
    private String maidenName;
    private String sex;
    private String maritalStatus;
    private String dob;
    private String permHomeAddr;
    private String contactAddr;
    private String stateOfOrigin;
    private String localGovt;
    private String homeTown;
    private String country;
    private long phoneNumber;
    private String email;

    public BiodataHelper(String userId, String surName, String firstName, String otherName, String maidenName, String sex, String maritalStatus, String dob, String permHomeAddr, String contactAddr, String stateOfOrigin, String localGovt, String homeTown, String country, long phoneNumber, String email) {
        this.userId = userId;
        this.surName = surName;
        this.firstName = firstName;
        this.otherName = otherName;
        this.maidenName = maidenName;
        this.sex = sex;
        this.maritalStatus = maritalStatus;
        this.dob = dob;
        this.permHomeAddr = permHomeAddr;
        this.contactAddr = contactAddr;
        this.stateOfOrigin = stateOfOrigin;
        this.localGovt = localGovt;
        this.homeTown = homeTown;
        this.country = country;
        this.phoneNumber = phoneNumber;
        this.email = email;
    }

    public String getContactAddr() {
        return contactAddr;
    }

    public void setContactAddr(String contactAddr) {
        this.contactAddr = contactAddr;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getHomeTown() {
        return homeTown;
    }

    public void setHomeTown(String homeTown) {
        this.homeTown = homeTown;
    }

    public String getLocalGovt() {
        return localGovt;
    }

    public void setLocalGovt(String localGovt) {
        this.localGovt = localGovt;
    }

    public String getMaidenName() {
        return maidenName;
    }

    public void setMaidenName(String maidenName) {
        this.maidenName = maidenName;
    }

    public String getMaritalStatus() {
        return maritalStatus;
    }

    public void setMaritalStatus(String maritalStatus) {
        this.maritalStatus = maritalStatus;
    }

    public String getOtherName() {
        return otherName;
    }

    public void setOtherName(String otherName) {
        this.otherName = otherName;
    }

    public String getPermHomeAddr() {
        return permHomeAddr;
    }

    public void setPermHomeAddr(String permHomeAddr) {
        this.permHomeAddr = permHomeAddr;
    }

    public long getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(long phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getStateOfOrigin() {
        return stateOfOrigin;
    }

    public void setStateOfOrigin(String stateOfOrigin) {
        this.stateOfOrigin = stateOfOrigin;
    }

    public String getSurName() {
        return surName;
    }

    public void setSurName(String surName) {
        this.surName = surName;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }
    

}
