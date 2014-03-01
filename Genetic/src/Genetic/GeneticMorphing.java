package Genetic;

import java.util.Arrays;
import java.util.Random;

import com.cycling74.max.Atom;
import com.cycling74.max.DataTypes;
import com.cycling74.max.MaxObject;

public class GeneticMorphing extends MaxObject{

	String solutionString = "000000000000000000000001";
	String originalPop ="000000000000000000000010";
	
	// Algorithm Parameters
	double rateMutation = 0.2;
	double rateCrossover = 0.05;
	
	// Sequencer Patterns
	private int[] sequencerState = new int[24];

	private int userID;
	private int quantizationState;
	
    Population myPop;

    int toSparsify = 0;
    
	public GeneticMorphing(Atom[] args)
	{
		
		declareInlets(new int[]{DataTypes.ALL,DataTypes.ALL,DataTypes.ALL,DataTypes.FLOAT,DataTypes.FLOAT, DataTypes.INT});
		declareOutlets(new int[]{DataTypes.ALL});
		
		setInletAssist(new String[] { "Bang to evolve", "Sequencer State (encoded)", "Solution (encoded)", 
				"Crossover Rate", "Mutation Rate", "Sparsity Toggle"});
		setOutletAssist(new String[] { "Encoded message outlet"});
		
		
		// Initialize some parameters
		Algorithm.initialize(rateCrossover,rateMutation, 10,false);
		//create genetic related variables
		FitnessCalc.setSolution(solutionString);
		myPop = new Population(10, originalPop);
	}
    
	
	
	public void bang()
	{
		// Evolve population once
		if(myPop.getFittest().getFitness() < FitnessCalc.getMaxFitness())
		{
			myPop = Algorithm.evolvePopulation(myPop);
		
		}
		
		if(myPop.getFittest().getFitness() == FitnessCalc.getMaxFitness())
		{
			System.out.println("GA solution found!");
		}
				
				
		// Get the fittest
		String fittest = myPop.getFittest().toString();
		//System.out.println("Fittest = " + fittest);
		// Encode the fittest and send it to the output
		for(int i=0; i<24; i++)
		{
			sequencerState[i] = Integer.parseInt(Character.toString(fittest.charAt(i)));
		}
		
		if(toSparsify==1)
		{
			sparsify();
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
			Algorithm.initialize(rateCrossover,rateMutation, 10,false);
					
		}
		else if(getInlet()==4)
		{	
			rateMutation = inletVal;
			Algorithm.initialize(rateCrossover,rateMutation, 10,false);
		}
		
		else if(getInlet()==5)
		{
			toSparsify = inletVal;
		}
	}
    
	public void inlet(float inletVal)
	{
		if(getInlet()==3)
		{	
			rateCrossover = inletVal;
			Algorithm.initialize(rateCrossover,rateMutation, 10,false);
		}
		else if(getInlet()==4)
		{	
			rateMutation = inletVal;
			Algorithm.initialize(rateCrossover,rateMutation, 10,false);
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
				
				seqState  = seqState.replaceAll("\\[", "").replaceAll("\\]", "").replaceAll(" ","").replaceAll(",","");
				
				//Assign to relevant variable
				if(inlet==1)
				{
					originalPop = seqState.toString();
					System.out.println("Setting original population to : " + originalPop);
					myPop = new Population(10,originalPop);
				//	FitnessCalc.setSolution(solutionString);
				}
				else
				{
					solutionString = seqState.toString();
					System.out.println("Setting target to : " + solutionString);
				//	myPop = new Population(10, originalPop);
					FitnessCalc.setSolution(solutionString);
					
				}
						
			}
			else
			{
				System.out.println("List received at wrong inlet!");
			}
		}
		    
	}
	
	private void sparsify()
	{
		Random rand = new Random();
		
		for(int i=0;i<8;i++)
		{
			if(sequencerState[i]==1 && sequencerState[8+i]==1 && sequencerState[16+i]==1)
			{
				// If all the rows are on
				
			    int randomNum = rand.nextInt((2) + 1) + 1;
			    if(randomNum==1)
			    {
			    	sequencerState[8+i]=0;
			    	sequencerState[16+i]=0;
			    }
			    else if(randomNum==2)
			    {
			    	sequencerState[i]=0;
			    	sequencerState[16+i]=0;
			    }
			    else
			    {
			    	sequencerState[i]=0;
			    	sequencerState[8+i]=0;
			    }
			}
			else if(sequencerState[i]==1 && sequencerState[8+i]==1)
			{
				int randomNum = rand.nextInt((1) + 1) + 1;
			    if(randomNum==1)
			    {
			    	sequencerState[i]=0;
			    }
			    else
			    {
			    	sequencerState[8+i]=0;
			    }

			}
			
			else if(sequencerState[8+i]==1 && sequencerState[16+i]==1)
			{
				int randomNum = rand.nextInt((1) + 1) + 1;
			    if(randomNum==1)
			    {
			    	sequencerState[8+i]=0;
			    }
			    else
			    {
			    	sequencerState[16+i]=0;
			    }

			}
			
			else if(sequencerState[i]==1 && sequencerState[16+i]==1)
			{
				int randomNum = rand.nextInt((1) + 1) + 1;
			    if(randomNum==1)
			    {
			    	sequencerState[i]=0;
			    }
			    else
			    {
			    	sequencerState[16+i]=0;
			    }

			}
		}
	}
	
//	private void reInit()
//	{
//		// Initialize some parameters
//		Algorithm.initialize(rateCrossover,rateMutation, 10,true);
//		//create genetic related variables
//		FitnessCalc.setSolution(solutionString);
//		myPop = new Population(5, originalPop);
//	}
	
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