public privileged aspect Behaviour {
    declare parents:Rectangle implements Shape;
    declare parents:Circle implements Shape;

    public String Rectangle.getName() {
        return "Rectangle";
    }

    public String Circle.getName() {
        return "Circle";
    }

    // Override toString() method
    public String Circle.toString() {
        return (this.getName() + "(" + (int) this.radius + ")");
    }
    public String Rectangle.toString() {
        return (this.getName() + "(" + (int) this.width + "," + (int) this.height + ")");
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
            return proceed(c);
        }
    }

    pointcut callRectangleGetPerimeter(Rectangle r): execution(double Rectangle.getPerimeter()) && this(r);

    double around(Rectangle r):callRectangleGetPerimeter(r){

        if (r.height < 0 || r.width < 0) {
            return 0;
        } else {
            return proceed(r);
        }
    }

    pointcut callRectangleGetArea(Rectangle r): execution(double Rectangle.getArea()) && this(r);

    double around(Rectangle r):callRectangleGetArea(r){

        if (r.height < 0 || r.width < 0) {
            return 0;
        } else {
            return proceed(r);
        }
    }

    // ID Counter

    private static int id;

    public int Rectangle.getId() {
        return id;
    }

    public int Circle.getId() {
        return id;
    }

    pointcut callConstr(): execution(Shape+.new(..)) && this(Shape+);
    after(): callConstr(){
        id++;
//        System.out.println(id);
    }
}    
