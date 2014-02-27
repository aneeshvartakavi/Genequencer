// Clears all sequencer states
// Aneesh Vartakavi 
// GTCMT

package messageProcessing;
import java.util.Arrays;

import com.cycling74.max.Atom;
import com.cycling74.max.DataTypes;
import com.cycling74.max.MaxObject;

public class ClearAllSequencers extends MaxObject{

	private int[] sequencerState = new int [24];
	
	ClearAllSequencers()
	{
		declareInlets(new int[]{ DataTypes.ALL});
		declareOutlets(new int[]{ DataTypes.ALL});
		Arrays.fill(sequencerState, 0);
	}
	
	public void bang()
	{
		for(int i=0;i<8;i++)
		{
			Atom[] outputMessage = { Atom.newAtom(i),Atom.newAtom(0), Atom.newAtom(Arrays.toString(sequencerState))};
			outlet(0,outputMessage);
		}
	}
	
}
