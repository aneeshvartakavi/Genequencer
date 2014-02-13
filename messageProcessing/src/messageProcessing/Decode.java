// Message decoding
// Aneesh Vartakavi 
// GTCMT

package messageProcessing;

import java.util.Arrays;

import com.cycling74.max.Atom;
import com.cycling74.max.DataTypes;
import com.cycling74.max.MaxObject;

public class Decode extends MaxObject{

	// Declaring some variables
	private int userID;
	private int quantizationState;
	private int[] sequencerState = new int[24];
	
	
	public Decode()
	{	
		// Declaring Inlets
		declareInlets(new int[]{ DataTypes.ALL});
		declareOutlets(new int[]{ DataTypes.ALL, DataTypes.INT, DataTypes.INT});
		// Not creating the info outlet
		createInfoOutlet(false);
		// Inlet assists
		setInletAssist(new String[] { "Send an encoded message to decode immediately"});
		setOutletAssist(new String[] { "Decoded messages", "Sequencer Quantization level","UserID"});
		
		// Setting some default values
		userID = -1;
		quantizationState = -1;
		Arrays.fill(sequencerState, 0);
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
		    
	}
	
	public void bang()
	{
		sendToOutput();
	}
	
	private void sendToOutput()
	{
		outlet(2,userID);
		outlet(1,quantizationState);
		for(int i=0; i<24; i++)
		{
			Atom[] temp = { Atom.newAtom(sequencerState[i]), Atom.newAtom(i)};
			outlet(0,temp);
		}
		
	}

}