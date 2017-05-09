public with sharing class FactoryPatternDemo {
	public FactoryPatternDemo() {
		ShapeFactory sp = new ShapeFactory();
		Shape circ = sp.getShape('CIRCLE');
		circ.draw();

		Shape sq = sp.getShape('SQUARE');
		sq.draw();

		Shape rect = sp.getShape('RECTANGLE');
		rect.draw();
	}
}