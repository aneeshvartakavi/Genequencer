package messageProcessing;

import java.net.InetAddress;
import java.net.UnknownHostException;


//import java.util.Arrays;

import com.cycling74.max.Atom;
//import com.cycling74.max.DataTypes;
import com.cycling74.max.MaxObject;

public class IpAddress extends MaxObject {
	
	private int userID = -1;
	
	public IpAddress()
	{
		declareIO(2,1);
		
		setInletAssist(new String[] { "Bang to output IP address","Current UserID"});
		setOutletAssist(new String[] { "Ouput IP address"});
		
		createInfoOutlet(false);
		sendToOutlet();
		//System.out.println("IP of my system is := "+IP.getHostAddress());
	}
	
	public void bang()
	{
		sendToOutlet();
	}
	
	public void inlet(int inletVal)
	{
		if(getInlet()==1)
		{
			userID = inletVal;
		}
	}
	
	private void sendToOutlet()
	{
		try
		{
			Atom[] outputMessage = { Atom.newAtom("pong"),Atom.newAtom(userID), Atom.newAtom(InetAddress.getLocalHost().getHostAddress())};
			outlet(0,outputMessage);
			
			//outlet(0,InetAddress.getLocalHost().getHostAddress());
		}
		catch(UnknownHostException e)
		{
			
		}
	}

}

