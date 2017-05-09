//CHAPTER 2 CREATING AND DESTROYING OBJECTS
// Builder Pattern
public class NutritionFacts {
private final Integer servingSize;
private final Integer servings;
private final Integer calories;
private final Integer fat;
private final Integer sodium;
private final Integer carbohydrate;

	public class Builder {
		// Required parameters
		private final Integer servingSize; 
		private final Integer servings;
		// Optional parameters - initialized to default values
		private Integer calories = 0;
		private Integer fat = 0;
		private Integer carbohydrate = 0;
		private Integer sodium = 0;
		public Builder(Integer servingSize, Integer servings) {
			this.servingSize = servingSize;
			this.servings = servings;
		}
		public Builder calories(Integer val)
		{ 
			calories = val; return this; 
		}
		public Builder fat(Integer val)
		{ 
			fat = val; return this; 
		}
		public Builder carbohydrate(Integer val)
		{ 
			carbohydrate = val; return this;  
		}
		public Builder sodium(Integer val)
		{ 
			sodium = val; return this; 
		}
		public NutritionFacts build() 
		{
			return new NutritionFacts(this);
		}
	}
	private NutritionFacts(Builder builder) { 
		servingSize = builder.servingSize;
		servings = builder.servings;
		calories = builder.calories;
		fat = builder.fat;
		sodium = builder.sodium;
		carbohydrate = builder.carbohydrate;
	}
}