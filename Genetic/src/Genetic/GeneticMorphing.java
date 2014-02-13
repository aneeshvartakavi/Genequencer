package Genetic;

import java.util.Arrays;

import com.cycling74.max.Atom;
import com.cycling74.max.DataTypes;
import com.cycling74.max.MaxObject;

public class GeneticMorphing extends MaxObject{

	String solutionString = "000000000000100010010101";
	String originalPop ="101011010101101011010101";
	
	// Algorithm Parameters
	double rateMutation = 0.5;
	double rateCrossover = 0.0001;
	
	// Sequencer Patterns
	private int[] sequencerState = new int[24];
	private int userID;
	private int quantizationState;
	
    Population myPop;

    
	public GeneticMorphing(Atom[] args)
	{
		
		declareInlets(new int[]{DataTypes.ALL,DataTypes.ALL,DataTypes.ALL,DataTypes.FLOAT,DataTypes.FLOAT});
		declareOutlets(new int[]{DataTypes.ALL});
		
		setInletAssist(new String[] { "Bang to evolve", "Sequencer State (encoded)", "Solution (encoded)", 
				"Crossover Rate", "Mutation Rate" });
		setOutletAssist(new String[] { "Encoded message outlet"});
		
		
		// Initialize some parameters
		Algorithm.initialize(rateCrossover,rateMutation, 10,false);
		//create genetic related variables
		FitnessCalc.setSolution(solutionString);
		myPop = new Population(5, originalPop);
	}
    
	
	
	public void bang()
	{
		// Evolve population once
		myPop = Algorithm.evolvePopulation(myPop);
		// Get the fittest
		String fittest = myPop.getFittest().toString();
		
		// Encode the fittest and send it to the output
		for(int i=0; i<24; i++)
		{
			sequencerState[i] = Integer.parseInt(Character.toString(fittest.charAt(i)));
		}
		
		//sendToOutput();
		Atom[] outputMessage = { Atom.newAtom(userID),Atom.newAtom(quantizationState), Atom.newAtom(Arrays.toString(sequencerState))};
		outlet(0,outputMessage);
		
		// Evolve our population until we reach an optimum solution
//		if(myPop.getFittest().getFitness() < FitnessCalc.getMaxFitness()){
//			myPop = Algorithm.evolvePopulation(myPop);
//			generationCount++;
//			System.out.println("Generation: " + generationCount + " Fittest: " + myPop.getFittest().getFitness());
//		}else{
//			System.out.println("Solution found!");
//			System.out.println("Generation: " + generationCount);
//			System.out.println("Genes:");
//			System.out.println(myPop.getFittest());
//		}
		

	}
    

	public void inlet(int inletVal)
	{
		if(getInlet()==3)
		{	
			rateCrossover = inletVal;
		}
		else if(getInlet()==4)
		{	
			rateMutation = inletVal;
		}
	}
    
	public void inlet(float inletVal)
	{
		if(getInlet()==3)
		{	
			rateCrossover = inletVal;
		}
		else if(getInlet()==4)
		{	
			rateMutation = inletVal;
		}
	}
	
	public void list(Atom[] args)
	{
		int inlet = getInlet();
		if(inlet==1||inlet==2)
		{
			// Current sequencer state
			if(args.length==3)
			{
				userID = args[0].getInt();
				quantizationState = args[1].getInt();
				
				String seqState = args[2].getString();
				
				seqState  = seqState.replaceAll("\\[", "").replaceAll("\\]", "").replaceAll(" ","");
				
				//Assign to relevant variable
				if(inlet==1)
				{
					originalPop = seqState;
				}
				else
				{
					solutionString = seqState;
				}
						
			}
			else
			{
				System.out.println("List received at wrong inlet!");
			}
		}
		    
	}
	
//	private void sendToOutput()
//	{
//		outlet(2,userID);
//		outlet(1,quantizationState);
//		for(int i=0; i<24; i++)
//		{
//			Atom[] temp = { Atom.newAtom(sequencerState[i]), Atom.newAtom(i)};
//			outlet(0,temp);
//		}
//		
//	}
	

}