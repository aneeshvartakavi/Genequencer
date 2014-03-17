// Decode sequencer patterns
// Aneesh Vartakavi 
// GTCMT
package messageProcessing;


import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.PrintWriter;


import com.cycling74.max.Atom;
import com.cycling74.max.MaxObject;

public class Preset extends MaxObject {
	
	String tempMessage;
	int tempIndex;
	String [] presets = new String[9];
	
	int id = 0;
	
	Preset()
	{
		declareIO(3,1);
		createInfoOutlet(false);
		setInletAssist(new String[] { "Preset number to retrieve", "Input messages to store","UserID"});
		setOutletAssist(new String[] { "Output messages"});
				
	}
	
	
	public void list(Atom[] args)
	{
		if(getInlet()==1)
		{
			tempIndex = args[0].getInt();
			//System.out.println("Message receivied");
		
			tempMessage = args[1].toString()+ "-" + args[2].toString() + "-" + args[3].toString();
			
		}
	}	
	
	public void bang()
	{
		if(getInlet()==1)
		{
			presets[tempIndex] = tempMessage;
			writeToFile();
		}
	}
	
	public void inlet(int inletVal)
	{
		if(getInlet()==0)
		{
			String sequencerState = presets[inletVal];
			//System.out.println(sequencerState);
			if(sequencerState != null)
			//if(!sequencerState.equals("null"))
			{
				String[] items = sequencerState.split("-");
				int userID = Integer.parseInt(items[0]);
				int quantizationState = Integer.parseInt(items[1]);
				sequencerState = items[2];
				
				Atom[] outputMessage = { Atom.newAtom(userID),Atom.newAtom(quantizationState), Atom.newAtom(sequencerState)};
				outlet(0,outputMessage);
			}
			
		}
		
		if(getInlet()==2)
		{	
			id = inletVal;
			try {
				readFile();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
	
	private void readFile() throws IOException
	{
		String fileName = "presets" + id + ".txt";
		File f = new File(fileName);
		
		//System.out.println("File reading");
		if(f.exists() && !f.isDirectory()) 
		{
			//System.out.println("Exists");
			BufferedReader br = new BufferedReader(new FileReader(f));
	        String line;
	        for(int i=0;i<9;i++)
	        {
	        	line = br.readLine();
	        	if(!line.equals("null"))
	        	{
	        		presets[i] = line;
	        		System.out.println(line);
	        	}
	        }
	        //while(() != null) {
	        	
	        //}
	        
	        br.close();
		}
			
	}
	
	private void writeToFile()
	{
		String fileName = "presets" + id + ".txt";
		File f = new File(fileName);
		
		if(f.exists() && !f.isDirectory()) 
		{
			f.delete();
		}
		
		try {
				PrintWriter out = new PrintWriter(fileName);
				
				for(int i=0;i<9;i++)
				{
					out.println(presets[i]);
				}
				
				//out.println("Test");
				//out.println("Test1");
				out.close();
				
			} catch (FileNotFoundException e) {
				// TODO Auto-generated catch block
				System.out.println("Write Failed");
				e.printStackTrace();
			} 
			
			
		}
		
		
		
		
		
	
	
	

}
