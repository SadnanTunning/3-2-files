import java.io.*;
import java.net.*;

public class MyClient {
public static void main(String[] args) {
	try{
	
		Socket s = new Socket("127.0.0.1",6666); //localhost
		
		DataOutputStream dout=new DataOutputStream(s.getOutputStream());

		dout.writeUTF("Hello Server.........");
		dout.flush();

	    dout.close();
	    s.close();
    }
    catch(Exception e)
	{
	    System.out.println(e);
	}
  }
}
