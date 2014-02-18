package messageProcessing;


import java.util.Arrays;
import com.cycling74.max.Atom;
import com.cycling74.max.MaxObject;

public class EncodeSequencer extends MaxObject{
	
	// Declaring some variables
	private int userID;
	private int quantizationState;
	private int[] sequencerState = new int[24];
	
	public EncodeSequencer()
	{	
		// Declaring inlets and outlets
		declareIO(27,1);
		
		// Not creating the info outlet
		createInfoOutlet(false);
		// Inlet assists
		String[] inletAssist = new String[27];
		
		inletAssist[0] = "Bang to output encoded message";
		inletAssist[1] = "User ID";
		inletAssist[2] = "Quantization State";
		
		for(int i=3;i<27;i++)
		{
			inletAssist[i] = "State at position ".concat(Integer.toString(i-3));
		}
		
		setInletAssist(inletAssist);
		
		setOutletAssist(new String[] { "Encoded message"});
				
		// Setting some default values
		userID = -1;
		quantizationState = -1;
					
	}
	
	public void inlet(int inletVal)
	{
		int currInlet = getInlet();
		if(currInlet==2)
		{	
			quantizationState = inletVal;
		}
		else if(currInlet==1)
		{	
			userID = inletVal;
		}
		else if(currInlet>2)
		{
			sequencerState[getInlet()-3] = inletVal;
			
		}
	}

	
	public void bang()
	{
		if(getInlet()==0)
		{
			encodeMessage();
			
		}
		
	}
	
	private void encodeMessage()
	{
		if(userID==-1)
		{
			bail("MessageEncode : User ID not set");
		}
		else if(quantizationState==-1)
		{
			bail("MessageEncode : Quantization state not set");
		}
		
		else
		{	
			// If everything seems fine
			Atom[] outputMessage = { Atom.newAtom(userID),Atom.newAtom(quantizationState), Atom.newAtom(Arrays.toString(sequencerState))};
			outlet(0,outputMessage);
				
		}
		
	}
}
