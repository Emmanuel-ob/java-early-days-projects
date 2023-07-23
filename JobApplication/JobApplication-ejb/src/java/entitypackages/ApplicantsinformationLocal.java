/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package entitypackages;

import javax.ejb.EJBLocalObject;

/**
 *
 * @author Admin
 */
public interface ApplicantsinformationLocal extends EJBLocalObject {

    String getEmail();

    void setEmail(String email);

    String getSurname();

    void setSurname(String surname);

    String getOthername();

    void setOthername(String othername);

    String getSex();

    void setSex(String sex);

    int getAge();

    void setAge(int age);

    byte [] getCv();

    void setCv(byte [] cv);

    byte [] getPassport();

    void setPassport(byte [] passport);


}
