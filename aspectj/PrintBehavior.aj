public privileged aspect PrintBehavior {
    public String Circle.toString() {
        return (this.getName() + "(" + (int) this.radius + ")");
    }
    public String Rectangle.toString() {
        return (this.getName() + "(" + (int) this.width + "," + (int) this.height + ")");
    }
}
