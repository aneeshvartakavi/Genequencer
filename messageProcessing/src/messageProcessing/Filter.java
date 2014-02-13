package messageProcessing;

import com.cycling74.max.Atom;
import com.cycling74.max.DataTypes;
import com.cycling74.max.MaxObject;


public class Filter extends MaxObject{

	private int userID = -1;
	Filter()
	{
		// One inlet, 8 outlets
		declareInlets(new int[]{ DataTypes.ALL, DataTypes.INT});
		// Not creating the info outlet
		createInfoOutlet(false);
		// Inlet assists
		setInletAssist(new String[] { "Encoded message to filter", "Set userID"});
		setOutletAssist(new String[] { "Message filtered with userID"});
	}
	
	public void inlet(int inletVal)
	{
		if(getInlet()==1)
		{	
			userID = inletVal;
		}
		
	}
	
	public void list(Atom[] args)
	{
		
		if(userID == -1)
		{
			bail("Filter UserID not set!");
		}
		
		if(args.length==3)
		{
			int tempID = args[0].getInt();
		
			if(userID == tempID)
			{
				outlet(0,args);
			}
			
		}
		    
	}	
	
}
