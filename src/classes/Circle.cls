/* Adding comments to check merging */
public with sharing class Circle implements Shape{
	Map<Id,String> strList = new Map<Id,String>();
	public void draw(){
		System.debug('Inside Circle::draw() method');
	}
}