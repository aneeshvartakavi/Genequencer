package messageProcessing;

import java.net.InetAddress;
import java.net.UnknownHostException;


//import com.cycling74.max.DataTypes;
import com.cycling74.max.MaxObject;

public class IpAddress extends MaxObject {
	
	private String IP;
	
	public IpAddress()
	{
		declareIO(1,1);
		
		setInletAssist(new String[] { "Bang to output IP address"});
		setOutletAssist(new String[] { "Ouput IP address"});
		
		createInfoOutlet(false);
		sendToOutlet();
		//System.out.println("IP of my system is := "+IP.getHostAddress());
	}
	
	public void bang()
	{
		sendToOutlet();
	}
	
	private void sendToOutlet()
	{
		try
		{
			
			IP=InetAddress.getLocalHost().getHostAddress();
			outlet(0,IP);
		}
		catch(UnknownHostException e)
		{
			
		}
	}

}

