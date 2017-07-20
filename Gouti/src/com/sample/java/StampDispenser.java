package com.sample.java;

import java.util.Arrays;

/**
 * Facilitates dispensing stamps for a postage stamp machine.
 */
public class StampDispenser
{
	private int [] stampDenominations;
    /**
     * Constructs a new StampDispenser that will be able to dispense the given 
     * types of stamps.
     *
     * @param stampDenominations The values of the types of stamps that the 
     *     machine should have.  Should be sorted in descending order and 
     *     contain at least a 1.
     */
    public StampDispenser(int[] stampDenom)
    {
    	Arrays.sort(stampDenom);
    	    	 	
    	// sorted array in descending order
    	for(int i=0;i<stampDenom.length/2;i++) {
    	     
    	     int temp = stampDenom[i];
    	     stampDenom[i] = stampDenom[stampDenom.length-(i+1)];
    	     stampDenom[stampDenom.length-(i+1)] = temp;
    	}
    	stampDenominations=stampDenom;
    	/*for(int i=0;i<stampDenominations.length-1;i++)
    	{
    		System.out.println(stampDenominations[i]);
    	}
    	*/
    }
 
    /**
     * Returns the minimum number of stamps that the machine can dispense to
     * fill the given request.
     *
     * @param request The total value of the stamps to be dispensed.
     */
    public int calcMinNumStampsToFillRequest(int request)
    {  
    	int result=0;
    	int temp=request;
    	/*loop which iterates the given stamp array
    	 * and returns the number of stamps dispensed
    	 */
    	for (int i = 0; i < stampDenominations.length; i++) {
    		int value=stampDenominations[i];
			while(value<=temp && temp>=0)
			{
				System.out.println(temp+"used by" + value);
				result++;
				temp =temp-value;
			}
		}
    	//System.out.println("hi"+result);
        return result;
    }
    
    public static void main(String[] args)
    {
        int[] denominations = { 90, 30, 24, 10, 6, 2, 1 };
        StampDispenser stampDispenser = new StampDispenser(denominations);
        int result=stampDispenser.calcMinNumStampsToFillRequest(65);
        
        System.out.println(result);
    }
}
