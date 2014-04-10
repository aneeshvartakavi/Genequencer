package messageProcessing;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.Arrays;

import com.cycling74.max.Atom;
import com.cycling74.max.MaxObject;

public class ConductorCue extends MaxObject{
	
	// Currently 6 cue's, 8 players and message length 3
	Atom[][][] instructions = new Atom[6][8][2];
	
	ConductorCue()
	{
		declareIO(1,1);
		createInfoOutlet(false);
		// Initialize everything to -1	
		//System.out.println(instructions[3][3][0]);
		//init();
	
		//String fileName = "test.txt";
//		File f = new File("ConductorCues.txt");
//		System.out.println(f.getPath());
//		if(f.exists() && !f.isDirectory()) 
//		{
//			f.delete();
//			System.out.println("Deleting");
//		}
		
		
//		try {
//			boolean ex = f.createNewFile();
//			System.out.println(ex);
//		} catch (IOException e) {
			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
	
			
		try {
			System.out.println("Bang");
			readFile();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void inlet(int inletVal)
	{
		if(getInlet()==0)
		{
			for(int i=0;i<8;i++)
			{
				Atom qState = instructions[inletVal][i][0];
				
				if(qState!=null)
				{
					String pattern = instructions[inletVal][i][1].getString();
					
					String[] items = pattern.replaceAll("\\[", "").replaceAll("\\]", "").replaceAll(" ","").split(",");
					int[] sequencerState = new int[24];
					
					for (int j = 0; j < items.length; j++) 
					{
						sequencerState[j] = (int) Long.parseLong(items[j]);
					}
					
					Atom[] outputMessage = { Atom.newAtom(i),qState,Atom.newAtom(Arrays.toString(sequencerState))};
					outlet(0,outputMessage);
				}
				
			}
		}
	}
	
	public void bang()
	{
	/*	try {
			System.out.println("Bang");
			readFile();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}*/
	}
	
	private void readFile() throws IOException
	{
		File f = new File("ConductorCues.txt");
		
		//System.out.println("File reading");
		if(f.exists()) 
		{
			System.out.println("Exists");
			BufferedReader br = new BufferedReader(new FileReader(f));
	        String line;
	        
	        while((line = br.readLine()) != null) 
	        {
	        	String[] tempWords = line.split(" ");
        		
        		int cueId = Integer.parseInt(tempWords[0]);
        		int userID = Integer.parseInt(tempWords[1]);
        		int quantization = Integer.parseInt(tempWords[2]);
        		String pattern = tempWords[3];
        		
        		instructions[cueId][userID][0] = Atom.newAtom(quantization);
        		instructions[cueId][userID][1] = Atom.newAtom(pattern);
        		
        		//System.out.println("a -" + cueId + "b - " + userID + "c - " + quantization + "d - " + pattern);
	        }
	        System.out.println("Done");
	        br.close();
		}
		else
		{
			System.out.println("conductorCues.txt file doesn't exist!");
		}
	}
	
	
	

}
