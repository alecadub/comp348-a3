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

	pointcut callCircleGetArea(Circle c): execution(double Circle.getArea()) && this(c);
	
		double around(Circle c):callCircleGetArea(c){
		
		    if (c.radius < 0) {
		    	return 0;
		    } else {
		    	return Math.PI * Math.pow(c.radius, 2);
		    }
		}
		
	pointcut callCircleGetPerimeter(Circle c): execution(double Circle.getPerimeter()) && this(c);
	
		double around(Circle c):callCircleGetPerimeter(c){
		
		    if (c.radius < 0) {
		    	return 0;
		    } else {
		    	proceed(c);
		    }
		}
		
	pointcut callRectangleGetPerimeter(Rectangle r): execution(double Rectangle.getPerimeter()) && this(r);
	
		double around(Rectangle r):callRectangleGetPerimeter(r){
		
		    if (r.height < 0 || r.width < 0) {
		    	return 0;
		    } else {
		    	proceed(r);
		    }
		}
		
	pointcut callRectangleGetArea(Rectangle r): execution(double Rectangle.getArea()) && this(r);
	
		double around(Rectangle r):callRectangleGetArea(r){
		
		    if (r.height < 0 || r.width < 0) {
		    	return 0;
		    } else {
		    	proceed(r);
		    }
		}
    

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
