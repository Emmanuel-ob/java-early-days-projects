/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package welcometojavaprogramming;

import java.util.Scanner;
import javax.swing.JOptionPane;

/**
 *
 * @author Admin
 */
public class WelcomeToJavaProgramming {

    /**
     * @param args the command line arguments
     */
  

    public static void main(String[] args) {
        // TODO code application logic here
        Scanner input = new Scanner(System.in);
         int size;

        System.out.println("ENTER THE SIZE OF ARRAY LENGHT");
        size=input.nextInt();
        int values[];
        
        values = new int[size];
        
        

        for(int i=0; i<size; ++i)
        {
            int count =i+1;
     System.out.println("ENTER" + count + "NUMBER");
     values[i]= input.nextInt();

        }
       
     
        
   /* System.out.print("Guys you are welcome to java programming\n it seems interesting.....\n please prepare your mind, cos its not going to be easy\n");*/
        /*String i;
        i = "ola";
        System.out.print(i);*/
       /* String name = "matthew";
        int age = 34;
        double money = 33.7;*/
        /*System.out.println(name);
        System.out.println(age);
        System.out.println(money);*/
        
        /*System.out.println("your name is " + name);
        System.out.println("your age is " + age);
        System.out.println("the balance is money = " + money);*/
        
        
      /*System.out.println("your name is " + name + "your age is" + age 
        + "your balance =" + money);*/
        
        /*System.out.println("your name is " + name + "\nyour age is " + age 
                +"\nyour balance = " + money);*/
        
        
        
        
        
        
        /*System.out.print(name\n, age\n 'money'\n );*/
        
        /*System.out.printf("Your name is %s \n", name);
         System.out.printf("Your age is %d \n", age);
          System.out.printf("Your balance is %f \n", money);*/
        
         /*System.out.printf("Your name is %s, Your age is %d, Your balance is %f", name, age, money);*/
        
        //Scanner class
       /*Scanner input = new Scanner(System.in);
       String name;
       int age;
        
       System.out.print("Enter your name: ");
       name = input.nextLine();
       
        System.out.print("Enter your age: ");
        age = input.nextInt();

       
       System.out.println("Your name is " + name);
       System.out.println("Your age is " + age);*/
       //System.out.println("you are welcom to my world");
        
        
        /*A program that guess the number in your mind, 
        numbers inbetween 1 & 10(2-9)*/
        
        /*Scanner Class;
        Scanner input = new Scanner (System.in);
        String _response;
        int guessedNum;
       
      
        
        
        
        System.out.print("Guess a number in your mind from 2-9? y/n");
        _response = input.nextLine();
        if(_response == "y") 
        {System.out.print("is the number even? y/n");
        _response = input.nextLine();}
        if(_response == "y")
        {System.out.print("is the number divisible by 3? y/n");
        _response = input.nextLine();}
        
        }*/
        
         //JOptionPane.showMessageDialog(null, "The number: " + i);
        
        
            // A program the print odd number between 1-20
       /*Scanner input = new Scanner(System.in);
       int size = 10;
      
       for(int i = 1; i < 20; i = i + 2)
       {
          
           System.out.println("The number: " + i);
           
       }
       System.out.println("The End");*/
        
        
        
        //A program that print odd number between 1-20 
        //on a single JOptionPane Dailog in vertical order
        //Scanner input = new Scanner(System.in);
      /* int size = 10;
 int rep;
       for(int i = 1; i < 20; i = i + 2)
          
       {
         rep = i;
      JOptionPane.showMessageDialog(null, "The odd numbers are: \n " + rep);
    
     
       }
       
       System.out.println("The End");*/
        
        
        
        //A program to enter names at a specific location
        
       
        /*String names [];
        names = new String[5];
        
        System.out.println("ENTERING THE NAMES");
        
        for(int i=0; i<5; ++i)
        {
           int num = i + 1;
            System.out.print("Enter the name in location:" + num +" ");
            names[i] = input.nextLine();
        }
        System.out.println("PRINTING THE NAMES");
        for(int i=0; i<5; ++i)
        System.out.println("The names is: " + names[i]);*/
                
                
        
        
     /*
        //A program to input names at certain locations
        String names [];
        names = new String[5];
       
        System.out.println("ENTERING THE NAMES");
        
        for(int i=0; i<5; ++i)
        {
          
           int num = i + 1;
           
            System.out.print("Enter the name in location:" + num +" ");
            names[i] = input.nextLine();
           
      
            }
         
        
        System.out.println("PRINTING THE NAMES");
        for(int i=0; i<5; ++i)
        System.out.println("The names is: " + names[i]);  */
        
        
        
        
        
        
       }
    
    
}
