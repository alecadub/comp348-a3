public privileged aspect Behaviour {
    declare parents:Rectangle implements Shape;
    declare parents:Circle implements Shape;

    public String Rectangle.getName() {
        return "Rectangle";
    }

    public String Circle.getName() {
        return "Circle";
    }
    
// If height, width, or radius is 0, return 0 for perimeter and radius

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
