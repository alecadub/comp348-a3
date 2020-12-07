public aspect Behaviour {
    declare parents:Rectangle implements Shape;
    declare parents:Circle implements Shape;

    public String Rectangle.getName() {
        return "Rectangle";
    }

    public String Circle.getName() {
        return "Circle";
    }

}
