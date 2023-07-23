/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package databaseexample;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;

/**
 *
 * @author Admin
 */
public class DatabaseExample {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        
        String username = "root";
        String password = "";
        String url = "jdbc:mysql://localhost:3306/info_db";
        
        Statement st = null;
        Connection con = null;
        
  
        
   JOptionPane.showMessageDialog(null, "ABOUT TO SLECT");

        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            String query = "SELECT * FROM info_tb WHERE id = '" + 1 + "'"; 
            con = DriverManager.getConnection(url, username, password);
            st = con.createStatement();
            ResultSet reply = st.executeQuery(query);
            
            
            boolean response = reply.next();
            if(response)
            {
            String f =reply.getString("first_name");
            String l=reply.getString("last_name");
            int a=reply.getInt("age");
                //successful
            System.out.println("FIRST NAME: " + f + "\nLAST NAME: " + l + "\nAGE: " + a);
            }
           else
            {
                //unsuccessful
                System.out.println("no record found");
            }
          
        } catch (SQLException ex) {
            Logger.getLogger(DatabaseExample.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DatabaseExample.class.getName()).log(Level.SEVERE, null, ex);
        }





//UPDATE COMMAND      
//   String newLastName = JOptionPane.showInputDialog(null, "Enter the last name");
//   
//   JOptionPane.showMessageDialog(null, "ABOUT TO UPDATE");
//
//        
//        try {
//            Class.forName("com.mysql.jdbc.Driver");
//            String query = "UPDATE info_tb SET last_name = '" + newLastName + "' WHERE id = '" + 1 + "'"; 
//            Connection con = DriverManager.getConnection(url, username, password);
//            Statement st = con.createStatement();
//            int reply = st.executeUpdate(query);
//            
//            if(reply > 0)
//            {
//                //successful
//                JOptionPane.showMessageDialog(null, "UPDATE SUCCESSFULLY");
//            }
//            else
//            {
//                //not successful
//                JOptionPane.showMessageDialog(null, "NOT UPDATE SUCCESSFULLY");
//
//            }
//        } catch (SQLException ex) {
//            Logger.getLogger(DatabaseExample.class.getName()).log(Level.SEVERE, null, ex);
//        } catch (ClassNotFoundException ex) {
//            Logger.getLogger(DatabaseExample.class.getName()).log(Level.SEVERE, null, ex);
//        }







//INSERT
//        String firstName = "john";
//        String lastName = "obi";
//        int age = 24;
//        JOptionPane.showMessageDialog(null, "ABOUT TO SAVED");
//
//        
//        try {
//            Class.forName("com.mysql.jdbc.Driver");
//            String query = "INSERT INTO info_tb (first_name, last_name, age) VALUES('" + firstName + "', '" + lastName + "', '" + age + "')"; 
//            Connection con = DriverManager.getConnection(url, username, password);
//            Statement st = con.createStatement();
//            int reply = st.executeUpdate(query);
//            
//            if(reply > 0)
//            {
//                //successful
//                JOptionPane.showMessageDialog(null, "SAVED SUCCESSFULLY");
//            }
//            else
//            {
//                //not successful
//                JOptionPane.showMessageDialog(null, "NOT SAVED SUCCESSFULLY");
//
//            }
//        } catch (SQLException ex) {
//            Logger.getLogger(DatabaseExample.class.getName()).log(Level.SEVERE, null, ex);
//        } catch (ClassNotFoundException ex) {
//            Logger.getLogger(DatabaseExample.class.getName()).log(Level.SEVERE, null, ex);
//        }
              
          finally
        {
            try {
                st.close();
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(DatabaseExample.class.getName()).log(Level.SEVERE, null, ex);
            }
            
        }
          
    }
    
}
