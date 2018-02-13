
public class MathCalc {
	 
	
	public MathCalc() {
		
	}
	
	private static final double distanceConstant = 1;
	private static double top;
	private static double middle;
	private static double end;  
   
    	
	 
	 


		
	
	public static double getDistance(double widthDistance ) {
		
		return (distanceConstant * widthDistance) ;	
		// this is the way we collect  the distances we need for the next formula
		
	}
	
	public static double getAngle ( double widthDistanceA, double widthDistanceB){
		top =(getDistance(Math.sqrt( widthDistanceA)) )+ (getDistance( Math.sqrt(widthDistanceB)))-36;
				middle= top/ 2*((getDistance(widthDistanceA))*(getDistance(widthDistanceB)));
				end = (Math.acos(middle));
				return end;
						
						
				//   This is the the formula using cosine law to find the angle closest to the robot and in between the target. the 36 is the distance in between the heights squared so 6 to the power of two. the fromula you can get from googleing it and then manupulating it. 
				
				
				}

}




















