/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package constructoroverload;

/**
 *
 * @author Admin
 */
public class ConstructorOverload {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
 
    Data objData = new Data("ola", "ade", 23, 45.6);
    
    Data objData1 = new Data("ola", 23, 45.6);
    
    Data objData2 = new Data("ola", 23);


    
    }
    
}
