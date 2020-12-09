public privileged aspect Behaviour {
    declare parents:Rectangle implements Shape;
    declare parents:Circle implements Shape;

    public String Rectangle.getName() {
        return "Rectangle";
    }

    public String Circle.getName() {
        return "Circle";
    }
    
// Implement the logic for calculating the area of a circle

	
    

	
// Counter for ID

	Class ObjCounter() {
	
		private static int instanceCounter = 0;
		int counter = 0;
		
	      ObjCounter() {
	      	
		  instanceCounter++;
		  counter = instanceCounter;
	     }
	 }    
		 	      
}
