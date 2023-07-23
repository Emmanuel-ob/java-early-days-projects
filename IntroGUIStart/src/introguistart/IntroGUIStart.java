/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package introguistart;

import java.awt.FlowLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JTextField;
import javax.swing.plaf.basic.BasicTabbedPaneUI.MouseHandler;

/**
 *
 * @author Admin
 */
public class IntroGUIStart {

    /**
     * @param args the command line arguments
     */
    static  JTextField nameTxtField;
    public static void main(String[] args) {
        // TODO code application logic here
   
    JLabel welcomeLabel = new JLabel(":::::You are welcome::::");
        
    MouseHandler mH = new MouseHandler();
    welcomeLabel.addMouseListerner(mH);
        JLabel nameLabel = new JLabel();
        nameLabel.setText("Name: ");
        
        nameTxtField = new JTextField(20);
        
        JLabel readyLabel = new JLabel("YO!!! Are You Rweady to smoke some pot?");
        Handler h= new Handler();
        JButton yesButton = new JButton("Yes");
        yesButton.addActionListener(h);
        
        Handler f = new Handler();
        JButton noButton = new JButton("No");
        noButton.addActionListener(f);
//declares the object of a Jframe class
        JFrame frame = new JFrame();
        FlowLayout flow = new FlowLayout();
        frame.setLayout(flow);
       
        //Add components on the frame flow layout
        frame.add(welcomeLabel);
         frame.add(nameLabel);
          frame.add(nameTxtField);
           frame.add(readyLabel);
            frame.add(yesButton);
             frame.add(noButton);
        
      frame.setSize(250,300);//Sets default frame size
      frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);//Exits the frame after cancellation
      frame.setResizable(false);
      frame.setVisible(true);//set the frame visible
       
             
             
        
        
    }
     private static class Handler implements ActionListener
    {
 
        @Override
        public void actionPerformed(ActionEvent e) {
            String name= nameTxtField.getText();
            JOptionPane.showMessageDialog(null,"Hey " + name +  ", Get some lighter bro...");
        }
    }
    
     
     
}
