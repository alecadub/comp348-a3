
public privileged aspect Negative {
	 declare parents:Rectangle implements Shape;
	 declare parents:Circle implements Shape;

	 	public double Rectangle.getPerimeter() {
	 		
	 		if (this.height || this.width == 0)
	 			return 0;
	 	}
	 	
	 	public double Rectangle.getArea() {
	 		
	 		if (this.height || this.width == 0)
	 			return 0;
	 	}
	 	
	 	public double Circle.getPerimeter() {
	 		
	 		if (this.radius == 0)
	 			return 0;
	 	}
	 	
	 	public double AspectCircle.Circle.getArea() {
	 		
	 		if (this.radius == 0)
	 			return 0;
	 	} 
	
	

}
