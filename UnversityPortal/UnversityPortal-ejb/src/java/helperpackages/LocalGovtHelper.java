/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package helperpackages;

/**
 *
 * @author Uche
 */
public class LocalGovtHelper {
    private String lgaId;
    private String lgaName;
    private String state;

    public LocalGovtHelper(String lgaId, String lgaName, String state) {
        this.lgaId = lgaId;
        this.lgaName = lgaName;
        this.state = state;
    }

    public String getLgaId() {
        return lgaId;
    }

    public void setLgaId(String lgaId) {
        this.lgaId = lgaId;
    }

    public String getLgaName() {
        return lgaName;
    }

    public void setLgaName(String lgaName) {
        this.lgaName = lgaName;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }
    
}
