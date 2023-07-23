/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package introgui1;

import java.awt.Color;
import java.awt.Cursor;
import java.awt.FlowLayout;
import java.awt.LayoutManager;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.MouseEvent;
import java.awt.event.MouseListener;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JTextField;

/**
 *
 * @author Admin
 */
public class IntroGUI1 {

    /**
     * @param args the command line arguments
     */
    static JTextField nameTextField;
    static JLabel welcomeLabel;
    public static void main(String[] args) {
        // TODO code application logic here
        
       welcomeLabel = new JLabel("                         YOU ARE WELCOME                         ");
        
        MouseHandler mH = new MouseHandler();
        welcomeLabel.addMouseListener((MouseListener) mH);
        
        JLabel nameLabel = new JLabel();
        nameLabel.setText("NAME");
        nameLabel.setToolTipText("welcome");
        
        nameTextField = new JTextField(20);
        
        JButton enterButton = new JButton();
        enterButton.setText("Enter");
        
        ActionListener h = new Handler();
        enterButton.addActionListener(h);

        
        LayoutManager layout = new FlowLayout();
        
        JFrame frame = new JFrame();
        frame.setLayout(layout);
        
        frame.add(welcomeLabel);
        frame.add(nameLabel);
        frame.add(nameTextField);
        frame.add(enterButton);
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setSize(300, 300);
        
        frame.setResizable(false);
        
        frame.setVisible(true);
        
        
    }
    
    private static class Handler implements ActionListener
    {

        @Override
        public void actionPerformed(ActionEvent e) {
            String n = nameTextField.getText();
            JOptionPane.showMessageDialog(null, n + ", You are welcome to GUI");
        }

//        @Override
//        public void actionPerformed(ActionEvent e) {
//            throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
//        }
        
    }
    
    private static class MouseHandler implements MouseListener
    {

        @Override
        public void mouseClicked(MouseEvent e) {
        }

        @Override
        public void mousePressed(MouseEvent e) {
        }

        @Override
        public void mouseReleased(MouseEvent e) {
        }

        @Override
        public void mouseEntered(MouseEvent e) {
            
            //JOptionPane.showMessageDialog(nameTextField, "CHANGE COLOER HERE");
            welcomeLabel.setForeground(Color.red);
            Cursor r = new Cursor(Cursor.HAND_CURSOR);
            welcomeLabel.setCursor(r);
            
        }

        @Override
        public void mouseExited(MouseEvent e) {
            welcomeLabel.setForeground(Color.black);
            
            Cursor r = new Cursor(Cursor.DEFAULT_CURSOR);
            welcomeLabel.setCursor(r);
        }

//        @Override
//        public void mouseClicked(MouseEvent e) {
//            throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
//        }
//
//        @Override
//        public void mousePressed(MouseEvent e) {
//            throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
//        }
//
//        @Override
//        public void mouseReleased(MouseEvent e) {
//            throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
//        }
//
//        @Override
//        public void mouseEntered(MouseEvent e) {
//            throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
//        }
//
//        @Override
//        public void mouseExited(MouseEvent e) {
//            throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
//        }
        
    
    }
    
}
