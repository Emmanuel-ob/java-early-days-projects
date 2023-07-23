/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package introgui1;

import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.FlowLayout;
import java.awt.event.ItemEvent;
import java.awt.event.ItemListener;
import javax.swing.ButtonGroup;
import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.JRadioButton;

/**
 *
 * @author Admin
 */
public class RadioPanel {
   static JRadioButton red;
    static JRadioButton blue;
    static JRadioButton green;
    static JRadioButton yellow;
    static JPanel centerPanel ;
    public static void main(String[] args) {
        ButtonGroup gp = new ButtonGroup();
        
        red = new JRadioButton("RED");
        blue = new JRadioButton("BLUE");
        green = new JRadioButton("GREEN");
        yellow = new JRadioButton("YELLOW");
        
        Handler h = new Handler();
        red.addItemListener((ItemListener) h);
        green.addItemListener(h);
        blue.addItemListener(h);
        yellow.addItemListener(h);
        
        JPanel panel = new JPanel();
        panel.setBackground(Color.red);
        panel.setLayout(new FlowLayout());
        panel.add(red);
        panel.add(blue);
        panel.add(green);
        panel.add(yellow);
        
        gp.add(blue);
        gp.add(red);
        gp.add(green);
        gp.add(yellow);
        
        centerPanel = new JPanel();
        centerPanel.setBackground(Color.CYAN);
        
        JFrame frame = new JFrame("Color Display");
        frame.setLayout(new BorderLayout());
        frame.add(panel, BorderLayout.SOUTH);
        frame.add(centerPanel, BorderLayout.CENTER);
        
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setSize(300, 300);
        frame.setResizable(false);
        frame.setVisible(true);
        
    }
    
    private static class Handler implements ItemListener
    {

        @Override
        public void itemStateChanged(ItemEvent e) {
            
            //JOptionPane.showMessageDialog(centerPanel, e.getSource());
            Object obj = e.getSource();
            JRadioButton jb = (JRadioButton)obj;
            
//            if(jb.isSelected())
//            {
//                centerPanel.setBackground(Color.red);
//            }
            
            if(red.isSelected())
            {
                centerPanel.setBackground(Color.red);
            }
            else if(green.isSelected())
            {
                centerPanel.setBackground(Color.BLACK);
            }
            else if(blue.isSelected())
            {
                centerPanel.setBackground(Color.blue);
            }
            else
            {
                centerPanel.setBackground(Color.yellow);
            }
            
        }

//        @Override
//        public void itemStateChanged(ItemEvent e) {
//            throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
//        }
        
    }
     
    
}
