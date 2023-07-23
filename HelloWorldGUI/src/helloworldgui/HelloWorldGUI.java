/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package helloworldgui;
import java.awt.*;
import java.awt.event.*;
import javax.swing.*;
/**
 *
 * @author Admin
 */
public class HelloWorldGUI {

    /**
     * @param args the command line arguments
     */
private static class HelloWorldDisplay extends JPanel {
@Override
public void paintComponent(Graphics g) {
super.paintComponent(g);
g.drawString( "Hello World!", 20, 30 );
}
}
private static class ButtonHandler implements ActionListener {
@Override
public void actionPerformed(ActionEvent e) {
System.exit(0);
}
}
    public static void main(String[] args) {
        // TODO code application logic here
        
HelloWorldDisplay displayPanel = new HelloWorldDisplay();
JButton okButton = new JButton("OK");
ButtonHandler listener = new ButtonHandler();
okButton.addActionListener(listener);
JPanel content = new JPanel();
content.setLayout(new BorderLayout());
content.add(displayPanel, BorderLayout.CENTER);
content.add(okButton, BorderLayout.SOUTH);
JFrame window = new JFrame("GUI Test");
window.setContentPane(content);
window.setSize(250,100);
window.setLocation(100,100);
window.setVisible(true);
    }
    
}
