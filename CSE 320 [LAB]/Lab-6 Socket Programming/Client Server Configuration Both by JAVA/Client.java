/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package client;
import java.net.*;
import java.io.*;

/**
 *
 * @author HP
 */
public class Client {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
       
        try{
            Socket s = new Socket("127.0.0.1", 6666);
            
            DataInputStream din = new DataInputStream(s.getInputStream());
            DataOutputStream dout = new DataOutputStream(s.getOutputStream());
            BufferedReader  br = new BufferedReader(new InputStreamReader(System.in));
           
            String str1 = "", str2 = ""; 
            
            while(!str1.equals("Bye"))
            {
                
               str1 = br.readLine();
               dout.writeUTF(str1);
               dout.flush();
               
               str2 = din.readUTF();
               System.out.println("Server Says : " + str2);
            }
            
           
            dout.close();
            s.close();  
        }
        
        catch(Exception e)
        {
            System.out.println(e);
        }
        
    }
    
}
