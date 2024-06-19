/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package server;
import java.net.*;
import java.io.*;

/**
 *
 * @author HP
 */
public class Server {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        try{
            ServerSocket ss = new ServerSocket(6666);
            
            Socket s = ss.accept();
            
            DataInputStream din = new DataInputStream(s.getInputStream());
            DataOutputStream dout = new DataOutputStream(s.getOutputStream());
            BufferedReader  br = new BufferedReader(new InputStreamReader(System.in));
           
            String str1 = "", str2 = ""; 
            
            while(!str1.equals("Bye"))
            {
               str1 = din.readUTF();
               System.out.println("Client Says : " + str1);
               
               
               str2 = br.readLine();
               dout.writeUTF(str2);
               dout.flush();
               
               
            }
            
            dout.close();
            s.close();  
            ss.close();
        }
        
        catch(Exception e)
        {
            System.out.println(e);
        }
        
    }
    
}

