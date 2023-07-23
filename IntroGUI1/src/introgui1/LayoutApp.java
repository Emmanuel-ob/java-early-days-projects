/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package introgui1;

import java.awt.BorderLayout;
import javax.swing.JButton;
import javax.swing.JFrame;

/**
 *
 * @author Admin
 */
public class LayoutApp {
     public static void main(String[] args) {
        
        JButton n = new JButton("NORTH");
        JButton S = new JButton("SOUTH");
        JButton e = new JButton("EAST");
        JButton w = new JButton("WEST");
        JButton c = new JButton("CENTER");
        
        BorderLayout layout = new BorderLayout();
        JFrame frame = new JFrame("Welcome");
        frame.setLayout(layout);
        
        frame.add(n, BorderLayout.NORTH);
        frame.add(S, BorderLayout.SOUTH);
        frame.add(e, BorderLayout.EAST);
        frame.add(w, BorderLayout.WEST);
        frame.add(c, BorderLayout.CENTER);
        
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setSize(300, 300);
        
        frame.setResizable(false);
        
        frame.setVisible(true);
    }
     
}
