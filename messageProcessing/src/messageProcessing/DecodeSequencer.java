package messageProcessing;


import com.cycling74.max.Atom;
import com.cycling74.max.MaxObject;

public class DecodeSequencer extends MaxObject{
	
	// Declaring some variables
	private int userID;
	private int quantizationState;
	private int[] sequencerState = new int[24];
	
	public DecodeSequencer()
	{	
		// Declaring inlets and outlets
		declareIO(1,26);
		
		// Not creating the info outlet
		createInfoOutlet(false);
		// Inlet assists
		setInletAssist(new String[] { "Send an encoded message to decode"});
		
		String[] outletAssist = new String[26];
		
		outletAssist[0] = "User ID";
		outletAssist[1] = "Quantization State";
		
		for(int i=2;i<26;i++)
		{
			outletAssist[i] = "State at position ".concat(Integer.toString(i-2));
		}
		
		setOutletAssist(outletAssist);
		
		// Setting some default values
		userID = -1;
		quantizationState = -1;
					
	}
	
	public void list(Atom[] args)
	{
		
		if(args.length==3)
		{
			userID = args[0].getInt();
			quantizationState = args[1].getInt();
			
			String seqState = args[2].getString();
			
			String[] items = seqState.replaceAll("\\[", "").replaceAll("\\]", "").replaceAll(" ","").split(",");
	
			for (int i = 0; i < items.length; i++) 
			{
				sequencerState[i] = (int) Long.parseLong(items[i]);
			}
			
			sendToOutput();
		}
		else
		{
			bail("Incorrect message passed into decodeSequencer");
		}
		    
	}
	
	public void bang()
	{
		//sendToOutput();
	}
	
	private void sendToOutput()
	{
		outlet(0,userID);
		outlet(1,quantizationState);
		
		for(int i=0; i<24; i++)
		{
			outlet(i+2,sequencerState[i]);
		}
		
	}

}
