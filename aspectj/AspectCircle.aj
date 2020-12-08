
public priviliged aspect AspectCircle {
	declare parents:Circle implements Shape;

	public int Circle.getArea(){
		return Math.PI * Math.pow(this.radius, 2);
	}

}
C 