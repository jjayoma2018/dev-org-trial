/* Adding comments to check merging */
public with sharing class Circle implements Shape{
	List<String> strList = new List<String>();
	public void draw(){
		System.debug('Inside Circle::draw() method');
	}
}