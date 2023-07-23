/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package mysession;

import javax.ejb.EJB;
import javax.jws.WebService;

/**
 *
 * @author Uche
 */
@WebService()
public class MylogicService {
    @EJB
    private sessionpackages.projectLogicLocal ejbRef;
    // Add business logic below. (Right-click in editor and choose
    // "Web Service > Add Operation"

}
