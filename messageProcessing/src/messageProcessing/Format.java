// Message formatting, necessitated by max-hole
// Aneesh Vartakavi 
// GTCMT
package messageProcessing;


import java.util.Arrays;

import com.cycling74.max.Atom;
import com.cycling74.max.DataTypes;
import com.cycling74.max.MaxObject;

public class Format extends MaxObject {

	// Declaring some variables
	private int userID;
	private int quantizationState;
	private int[] sequencerState = new int[24];
	

	public Format()
	{	
		// Declaring Inlets
		declareInlets(new int[]{ DataTypes.ALL});
		declareOutlets(new int[]{ DataTypes.ALL});
		// Not creating the info outlet
		createInfoOutlet(false);
		// Inlet assists
		setInletAssist(new String[] { "Unformatted message from MaxHole"});
		setOutletAssist(new String[] { "Cleaned up message"});
		
		// Setting some default values
		userID = -1;
		quantizationState = -1;
		//Arrays.fill(sequencerState, 0);
	}
	
	public void list(Atom[] args)
	{
		if(args.length==26)
		{
			userID = args[0].getInt();
			
			quantizationState = args[1].getInt();
				
			//String seqState = args.getString();
				
			//String[] items = seqState.replaceAll("\\[", "").replaceAll("\\]", "").replaceAll(" ","").replaceAll("\\\\",",").split(",");
			//System.out.println(seqState);
		
			for (int i = 0; i < 24; i++) 
			{
				
				String tempString = args[i+2].getString();
				tempString = tempString.replaceAll("\\[", "").replaceAll("\\]", "").replaceAll(",","").replaceAll("\\\\","");
				sequencerState[i] = Integer.parseInt(tempString);
			}
			
			
		}
		// Send cleaned message to the output
		Atom[] outputMessage = { Atom.newAtom(userID),Atom.newAtom(quantizationState), Atom.newAtom(Arrays.toString(sequencerState))};
		outlet(0,outputMessage);
			
	}

	
	
}
