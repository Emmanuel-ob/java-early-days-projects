/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package assignmentsonjava;
import java.util.Scanner;
/**
 *
 * @author Admin
 */
public class AssignmentsOnJava {
    
    

 public String solutionToQuadratic(int a, int b, int c)
         
 {
     
  
   double numeratorRight = (b*b)-(4*a*c);
   if (numeratorRight<1)
   {
       double numeratorRightRoot = Math.sqrt(Math.abs(numeratorRight));
       double denominator = 2*a;
       double p1 = (-1*b)/denominator;
       double p2 = numeratorRightRoot/denominator;
   String x1 = "" + p1 +  "-"  + p2 + "i";
   String x2 = "" + p1 +  "+"  + p2 + "i";
  String val =   x1 +  ","  + x2;
     return val;
  
   }
   else
   {double numeratorRightRoot = Math.sqrt(numeratorRight);
   double denominator = 2*a;
   double x1 = ((-1*b)-numeratorRightRoot)/denominator;
   double x2 = (b+numeratorRightRoot)/denominator;
    String val = "" + x1 + "," + x2;
   return val;
   }
     
   
}
    
   
     public int arithmetic(int x, int y)
                // A method for calculating sum of two int X, Y
        {
        int sum = x + y;
        return sum;
            
        }

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        
      Scanner input = new Scanner(System.in);
      AssignmentsOnJava calc = new AssignmentsOnJava();
      int a, b, c;
      System.out.print("input the value for variable a: ");
      a = input.nextInt();
      System.out.print("input the value for variable b: ");
      b = input.nextInt();
      System.out.print("input the value for variable c: ");
      c = input.nextInt();
     String val = calc.solutionToQuadratic(a, b, c);
    
      System.out.print("The value of x1,x2 = " + val);

       
        /* Aprogram that accept names and ages of staff using 2 dimen. array
      Scanner input = new Scanner (System.in);  
      String nameAge [][]= new String[5][2];
      int num;
      System.out.println("EXAMPLES: INITIALIZING 2 DIMENSIONAL ARRAY");
      
      for(int counter=0; counter<5; ++counter)
      {
          num=counter + 1;
      System.out.println("Enter the name of staff in location: " + num );
      nameAge[counter][0] = input.nextLine();
      System.out.println("Enter " +nameAge[counter][0] + "'" + "age");
      nameAge[counter][1]= input.nextLine();
      }
      
       System.out.println("EXAMPLE: PRINTING VALUE 2 DIMENTIONAL ARRAY ");
      System.out.println("S/N\tNAME\tAGE");
            for(int counter=0; counter<5; ++counter)
            { 
                num=counter+1;
    System.out.println(num + "\t" + nameAge[counter][0] + "\t" + nameAge[counter][1]);
   
            }

       System.out.println("THANK YOU SIR!!! THIS THING IS GETTING CLEARER");


      */
      
      
      
      
      
      
      /*int age [];
      age = new int[5];
    int i, j, z;
     
     System.out.println("input names and age");
     
        for ( j = 0; j<5; j++)
        {      
   System.out.print("THE NAME IS:" + " ");
      names[j] = input.nextLine();
     
          }
      for( i = 0; i<5; i++)
      {  
   System.out.print("THE AGE IS:" + " ");   
      age[i] = input.nextInt();
      }
      for(z = 0; z<5; z++)
      {   
     System.out.println(names[j] + " " + age[i]);
        }
      System.out.println();*/

          
        















//A program that will print multiplication table between 1&5
        
        /*int rowNumber, rowMultiplier;
        for(rowNumber = 1; rowNumber <=5; rowNumber++)
        {
           for(rowMultiplier = 1; rowMultiplier <= 5; rowMultiplier++)
           {
               
               System.out.printf("%4d", rowNumber*rowMultiplier);
               
           }  
           System.out.println();
        }*/
        
        
        
        /*
        //A program the utilizes the sum-method
        Scanner input= new Scanner(System.in);
        
        AssignmentsOnJava wel = new AssignmentsOnJava();
        System.out.print("ENTER THE IST NUMBER: ");
        int num1 = input.nextInt();
        
        System.out.print("ENTER THE SECOND NUMBER: ");
         int num2 = input.nextInt();

         int sum = wel.arithmetic(num1, num2);
         System.out.println("The result of the 2 numbers: " + sum);
                */

    }
       
    
    
}

