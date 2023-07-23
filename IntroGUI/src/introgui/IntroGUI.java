/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package introgui;

import java.awt.FlowLayout;
import java.awt.event.ActionListener;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JTextField;

/**
 *
 * @author Admin
 */
public class IntroGUI {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
     JLabel welcomeLabel = new JLabel(":::::You are welcome::::");
        
        JLabel nameLabel = new JLabel();
        nameLabel.setText("Name: ");
        
        JTextField nameTxtField = new JTextField(20);
        
        JLabel readyLabel = new JLabel("YO!!! Are You Rweady to smoke some pot?");
        Handler h= new Handler();
        JButton yesButton = new JButton("Yes");
        yesButton.addActionListener((ActionListener) h);
        
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
    
        
        
    }
    

