
public privileged aspect Counter {
	declare parents:Rectangle implements Shape;
    declare parents:Circle implements Shape;
	
	private static int instanceCounter = 0;
	int counter = 0;
	
	MyObject() {
	
	instanceCounter++;
	counter = instanceCounter;
	
	}

}
