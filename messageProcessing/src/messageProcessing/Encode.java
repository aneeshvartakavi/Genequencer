// Message encoding
// Aneesh Vartakavi 
// GTCMT

package messageProcessing;

import java.util.Arrays;

import com.cycling74.max.Atom;
import com.cycling74.max.DataTypes;
import com.cycling74.max.MaxObject;

public class Encode extends MaxObject {

	// Declaring some variables
	private int userID;
	private int quantizationState;
	private int[] sequencerState = new int[24];
	
	public Encode()
	{
		// Declaring Inlets
		declareInlets(new int[]{ DataTypes.ALL, DataTypes.ALL,  DataTypes.INT,  DataTypes.INT});
		declareOutlets(new int[]{ DataTypes.ALL});
		// Not creating the info outlet
		createInfoOutlet(false);
		// Inlet assists
		setInletAssist(new String[] { "Bang to encode", "Sequencer messages inlet", "UserID", "Quantization state"});
		setOutletAssist(new String[] { "Encoded message outlet"});
		
		// Setting some default values
		userID = -1;
		quantizationState = -1;
		Arrays.fill(sequencerState, 0);
				
	}
	
	public void bang() 
	{
		if(getInlet()==0)
		{
			encodeMessage();
		}
	     
	}
	
	public void inlet(int inletVal)
	{
		if(getInlet()==2)
		{	
			userID = inletVal;
		}
		else if(getInlet()==3)
		{	
			quantizationState = inletVal;
		}
	}
	
	public void list(Atom[] args)
	{
		if(getInlet()==1)
		{	
			// First value represents tile number
			int tempIndex = args[0].getInt();
			// Second value represents state
			int tempState = args[1].getInt();
			
			// Set the required state as needed
			sequencerState[tempIndex] = tempState;
					
		}
		
		// Send the message out as soon as it is received
		//encodeMessage();
			
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