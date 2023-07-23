/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package EntityPackages;

import javax.ejb.EJBLocalObject;

/**
 *
 * @author Obute
 */
public interface CandidatesLocal extends EJBLocalObject {

    Integer getCandidateId();

    void setCandidateId(Integer candidateId);

    String getCandidateName();

    void setCandidateName(String candidateName);

    int getCenterId();

    void setCenterId(int centerId);

    int getCategoryId();

    void setCategoryId(int categoryId);


}
