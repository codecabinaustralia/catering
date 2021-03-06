class PopulateDataController < ApplicationController
  def initial_seed
  	Patient.create(first_name: "James", last_name: "Barber", room_number: "A456", allergies: nil, diet_type: "Nil", diet_texture: "Solid", fluid_consistency: "Nil", fluid_restriction: "Nil", likes: "Peppermint Tea", dislikes: "Bread", extra_information: nil, avatar: nil)
  	Patient.create(first_name: "James", last_name: "Barber", room_number: "A456", allergies: nil, diet_type: "Nil", diet_texture: "Solid", fluid_consistency: "Nil", fluid_restriction: "Nil", likes: "Peppermint Tea", dislikes: "Bread", extra_information: nil)
  	Patient.create(first_name: "Bob", last_name: "Marley", room_number: "456", allergies: "Asthma", diet_type: "Normal", diet_texture: "Puree", fluid_consistency: "Normal", fluid_restriction: "None", likes: "chocolate", dislikes: "Vegemite", extra_information: "Can be quite agressive if told what to do.")
  	Patient.create(first_name: "Precious", last_name:"Lucy", room_number: "225", allergies: "Peanuts, Eggs", diet_type: "Gluten Free", diet_texture: "Cut Up", fluid_consistency: "Level 1", fluid_restriction: nil, likes: "Chocolate", dislikes: "Vegetables", extra_information: "Needs assistance to eat")
  	Patient.create(first_name: "Yan", last_name: "Shimp", room_number: "226", allergies: "Peanuts", diet_type: "HEHP", diet_texture: "Puree", fluid_consistency: "Level 2", fluid_restriction: nil, likes: "Chips", dislikes: "Potato", extra_information: "Ensure a straw with all drinks")
  	Patient.create(first_name: "Khadijah", last_name: "Marshburn", room_number: "227", allergies: "Dairy, Eggs", diet_type: "Diabetic", diet_texture: "Soft", fluid_consistency: "Level 3", fluid_restriction: nil, likes: "Sweets, Lollies", dislikes: "Eggs", extra_information: "Must have water available when eating")
  	Patient.create(first_name: "Carlita", last_name: "Janecek", room_number: "228", allergies: "None", diet_type: "Lactose free", diet_texture: "MnceMst", fluid_consistency: "Normal", fluid_restriction: nil, likes: "Tim Tams", dislikes: "Seafood", extra_information: "Enjoys coffee with morning tea")
  	Patient.create(first_name: "Margit", last_name: "Laverdiere", room_number: "229", allergies: "None", diet_type: "Vegetarian", diet_texture: "Soft/Cut Up", fluid_consistency: "Level 1", fluid_restriction: nil, likes: "Steak", dislikes: "Bananas", extra_information: "Please serve large portion sizes")
  	Patient.create(first_name: "Lynnette", last_name: "Welsch", room_number: "230", allergies: "Fish", diet_type: "Low Sodium", diet_texture: "Normal", fluid_consistency: "Level 2", fluid_restriction: nil, likes: "Tomato Soup", dislikes: "Lamb", extra_information: "Needs assistance to eat")
  	Patient.create(first_name: "Natacha", last_name: "Gesell", room_number: "231", allergies: "Peanuts", diet_type: "Nil by Mouth", diet_texture: "Cut Up", fluid_consistency: "Level 3", fluid_restriction: nil, likes: "Pizza", dislikes: "Fish", extra_information: "Ensure a straw with all drinks")
  	Patient.create(first_name: "Andria", last_name: "Novy", room_number: "232", allergies: "Dairy, Fish", diet_type: "Fluid restriction", diet_texture: "Puree", fluid_consistency: "Normal", fluid_restriction: nil, likes: "Chocolate", dislikes: "Vegetables", extra_information: "Must have water available when eating")
  	Patient.create(first_name: "Lowell", last_name: "Rumery", room_number: "233", allergies: "Fish", diet_type: "Culturally Specific", diet_texture: "Soft", fluid_consistency: "Level 1", fluid_restriction: nil, likes: "Chips", dislikes: "Potato", extra_information: "Enjoys coffee with morning tea")
  	Patient.create(first_name: "Vita", last_name: "Rochell", room_number: "234", allergies: "None", diet_type: "Unfortified", diet_texture: "MnceMst", fluid_consistency: "Level 2", fluid_restriction: nil, likes: "Sweets, Lollies", dislikes: "Eggs", extra_information: "Please serve large portion sizes")
  	Patient.create(first_name: "Ardath", last_name: "Karas", room_number: "235", allergies: "Peanuts", diet_type: "High Fibre", diet_texture: "Soft/Cut Up", fluid_consistency: "Level 3", fluid_restriction: nil, likes: "Tim Tams", dislikes: "Seafood", extra_information: "Needs assistance to eat")
  	Patient.create(first_name: "Berenice", last_name: "Robeson", room_number: "236", allergies: "None", diet_type: "Normal", diet_texture: "Normal", fluid_consistency: "Normal", fluid_restriction: nil, likes: "Steak", dislikes: "Bananas", extra_information: "Ensure a straw with all drinks")
  	Patient.create(first_name: "Clorinda", last_name: "Blowe", room_number: "242", allergies: "Fish", diet_type: "Gluten Free", diet_texture: "Cut Up", fluid_consistency: "Level 1", fluid_restriction: nil, likes: "Tomato Soup", dislikes: "Lamb", extra_information: "Must have water available when eating")
  	Patient.create(first_name: "Terresa", last_name: "Rundle", room_number: "243", allergies: "None", diet_type: "HEHP", diet_texture: "Puree", fluid_consistency: "Level 2", fluid_restriction: nil, likes: "Pizza", dislikes: "Fish", extra_information: "Enjoys coffee with morning tea")
  	Patient.create(first_name: "Carolin", last_name: "Rood", room_number: "244", allergies: "None", diet_type: "Diabetic", diet_texture: "Soft", fluid_consistency: "Level 3", fluid_restriction: nil, likes: "Chocolate", dislikes: "Vegetables", extra_information: "Please serve large portion sizes")
  	Patient.create(first_name: "Yu", last_name: "Witherow", room_number: "245", allergies: "Peanuts, Fish", diet_type: "Lactose free", diet_texture: "MnceMst", fluid_consistency: "Normal", fluid_restriction: nil, likes: "Chips", dislikes: "Potato", extra_information: "Needs assistance to eat")
  	Patient.create(first_name: "Jame", last_name: "Shuster", room_number: "246", allergies: "Dairy", diet_type: "Vegetarian", diet_texture: "Soft/Cut Up", fluid_consistency: "Level 1", fluid_restriction: nil, likes: "Sweets, Lollies", dislikes: "Eggs", extra_information: "Ensure a straw with all drinks")
  	Patient.create(first_name: "Miranda", last_name: "Munch", room_number: "247", allergies: "None", diet_type: "Low Sodium", diet_texture: "Normal", fluid_consistency: "Level 2", fluid_restriction: nil, likes: "Tim Tams", dislikes: "Seafood", extra_information: "Must have water available when eating")
  	Patient.create(first_name: "Filiberto", last_name: "Lindsay", room_number: "248", allergies: "Peanuts", diet_type: "Nil by Mouth", diet_texture: "Cut Up", fluid_consistency: "Level 3", fluid_restriction: nil, likes: "Steak", dislikes: "Bananas", extra_information: "Enjoys coffee with morning tea")
  	Patient.create(first_name: "Cherly", last_name: "Morein", room_number: "249", allergies: "Dairy, Fish", diet_type: "Fluid restriction", diet_texture: "Puree", fluid_consistency: "Normal", fluid_restriction: nil, likes: "Tomato Soup", dislikes: "Lamb", extra_information: "Please serve large portion sizes")
  	Ingredient.create(title: 'Apple Juice', price: '2.68', unit_measure: 'Cup')
  	Ingredient.create(title: 'Apple Sauce', price: '1.98', unit_measure: 'Tea Spoon')
  	Ingredient.create(title: 'Apples, Gala', price: '3.57', unit_measure: 'Each')
  	Ingredient.create(title: 'Apples, Red/Golden Delicious', price: '5.57', unit_measure: 'Each')
  	Ingredient.create(title: 'Bacon (1 Rasher)', price: '3.5', unit_measure: 'Each')
  	Ingredient.create(title: 'Bagles, plain', price: '2.48', unit_measure: 'Each')
  	Ingredient.create(title: 'Baguette Rolls, White', price: '0.48', unit_measure: 'Each')
  	Ingredient.create(title: 'Baguette Rolls, Wholemeal', price: '0.48', unit_measure: 'Each')
  	Ingredient.create(title: 'Baguette/French Bread', price: '0.48', unit_measure: 'Each')
  	Ingredient.create(title: 'Barbeque Sauce', price: '1.46', unit_measure: 'Tea Spoon')
  	Ingredient.create(title: 'Beef Stew Meat', price: '4.48', unit_measure: '100g')
  	Ingredient.create(title: 'Beer, cans', price: '2', unit_measure: 'Each')
  	Ingredient.create(title: 'Bread Crumbs', price: '1.08', unit_measure: 'Cup')
  	Ingredient.create(title: 'Bread, 12-grain/multi-grain (Slice)', price: '2.98', unit_measure: 'Each')
  	Ingredient.create(title: 'Breakfast Sausage,', price: '1.14', unit_measure: 'Each')
  	Ingredient.create(title: 'Butter, real, unsalted/salted', price: '2.68', unit_measure: 'Tea Spoon')
  	Ingredient.create(title: 'Carrots, whole', price: '1.48', unit_measure: 'Each')
  	Ingredient.create(title: 'Cereal, Müsli style', price: '0.8', unit_measure: 'Cup')
  	Ingredient.create(title: 'Cheery Pie Filling', price: '2.28', unit_measure: 'Cup')
  	Ingredient.create(title: 'Cheese Singles (imitation)', price: '1.18', unit_measure: 'Each')
  	Ingredient.create(title: 'Cheese, block (regular)', price: '2.58', unit_measure: '100g')
  	Ingredient.create(title: 'Cheese, Boursin', price: '2.98', unit_measure: 'Each')
  	Ingredient.create(title: 'Cheese, Parmesan, jar', price: '2.98', unit_measure: 'Tea Spoon')
  	Ingredient.create(title: 'Cheese, shredded, Mexican style', price: '8.68', unit_measure: 'Cup')
  	Ingredient.create(title: 'Cheese, shredded, Mozarella', price: '2.24', unit_measure: 'Cup')
  	Ingredient.create(title: 'Cheese, sliced, deli', price: '3.98', unit_measure: '100g')
  	Ingredient.create(title: 'Cheese, sliced, regular', price: '2.28', unit_measure: 'Each')
  	Ingredient.create(title: 'Chicken Breasts,', price: '6.98', unit_measure: 'Each')
  	Ingredient.create(title: 'Chicken Nuggets, frozen', price: '4.47', unit_measure: 'Each')
  	Ingredient.create(title: 'Chicken Tenderloins, frozen', price: '6.98', unit_measure: 'Each')
  	Ingredient.create(title: 'Chips, potato chips', price: '2.68', unit_measure: 'Cup')
  	Ingredient.create(title: 'Chocolate Chip Cookie Dough', price: '2.18', unit_measure: 'Each')
  	Ingredient.create(title: 'Cocoa Rice Cereal', price: '2', unit_measure: 'Cup')
  	Ingredient.create(title: 'Coconut Milk', price: '1.58', unit_measure: 'Cup')
  	Ingredient.create(title: 'Coffee', price: '4.98', unit_measure: 'Tea Spoon')
  	Ingredient.create(title: 'Cold Cuts, ham or chicken', price: '3.98', unit_measure: '100g')
  	Ingredient.create(title: 'Cold Cuts, turkey variety', price: 'N/A', unit_measure: '100g')
  	Ingredient.create(title: 'Corn Flakes, regular', price: '1.88', unit_measure: 'Cup')
  	Ingredient.create(title: 'Corn Flakes, sugar frosted', price: '2.48', unit_measure: 'Cup')
  	Ingredient.create(title: 'Cottage Cheese', price: '2.78', unit_measure: 'Tea Spoon')
  	Ingredient.create(title: 'Cream Cheese', price: '1.98', unit_measure: 'Tea Spoon')
  	Ingredient.create(title: 'Cream, heavy whipping', price: '2.18', unit_measure: 'Tea Spoon')
  	Ingredient.create(title: 'Croissants', price: '3', unit_measure: 'Each')
  	Ingredient.create(title: 'Eggs, cage free', price: '3.18', unit_measure: 'Each')
  	Ingredient.create(title: 'Eggs, regular', price: '1.88', unit_measure: 'Each')
  	Ingredient.create(title: 'Fish, frozen (flounder)', price: '5.27', unit_measure: 'Each')
  	Ingredient.create(title: 'Fish, frozen (tilapia)', price: '4.48', unit_measure: 'Each')
  	Ingredient.create(title: 'Fish 3, frozen (cod)', price: '4.94', unit_measure: 'Each')
  	Ingredient.create(title: 'Flour, all purpose', price: '1.96', unit_measure: 'Cup')
  	Ingredient.create(title: 'Flour, self rising', price: '2.48', unit_measure: 'Cup')
  	Ingredient.create(title: 'French Fries, frozen', price: '1.97', unit_measure: 'Cup')
  	Ingredient.create(title: 'Fruit 1, frozen (strawberries)', price: '2.33', unit_measure: 'Cup')
  	Ingredient.create(title: 'Granola Bars, high fiber', price: '2.98', unit_measure: 'Each')
  	Ingredient.create(title: 'Granola Bars, regular', price: '2.18', unit_measure: 'Each')
  	Ingredient.create(title: 'Grapes, red', price: '1.88', unit_measure: '100g')
  	Ingredient.create(title: 'Green Beans, canned', price: '0.68', unit_measure: '100g')
  	Ingredient.create(title: 'Ground Beef (chuck, 80/20)', price: '3.28', unit_measure: '100g')
  	Ingredient.create(title: 'Ground Beef (sirloin, 90/10)', price: '4.18', unit_measure: '100g')
  	Ingredient.create(title: 'Ground Beef, Steak', price: '2.88', unit_measure: '100g')
  	Ingredient.create(title: 'Ground Turkey', price: '2.33', unit_measure: '100g')
  	Ingredient.create(title: 'Ham, boneless', price: '3.38', unit_measure: '100g')
  	Ingredient.create(title: 'Honey', price: '4.98', unit_measure: 'Tea Spoon')
  	Ingredient.create(title: 'Honey Crunch Oats', price: '1.98', unit_measure: 'Each')
  	Ingredient.create(title: 'Hot Dog Buns', price: '1.25', unit_measure: 'Each')
  	Ingredient.create(title: 'Hot Dogs, beef', price: '', unit_measure: 'Each')
  	Ingredient.create(title: 'Ice Cream, premium', price: '3.38', unit_measure: '100g')
  	Ingredient.create(title: 'Ice Cream, (On stick)', price: '1.98', unit_measure: 'Each')
  	Ingredient.create(title: 'Jalopeño Peppers, canned', price: '0.86', unit_measure: 'Tea Spoon')
  	Ingredient.create(title: 'Ketchup', price: '1.24', unit_measure: 'Tea Spoon')
  	Ingredient.create(title: 'Lemons', price: '1.98', unit_measure: 'Each')
  	Ingredient.create(title: 'Lettuce, iceberg', price: '1.18', unit_measure: 'Each')
  	Ingredient.create(title: 'Mandarin Oranges', price: '0.78', unit_measure: 'Each')
  	Ingredient.create(title: 'Margarine/Spread', price: '1.48', unit_measure: 'Tea Spoon')
  	Ingredient.create(title: 'Mayonnaise', price: '2.92', unit_measure: 'Tea Spoon')
  	Ingredient.create(title: 'Milk', price: '2.98', unit_measure: 'Cup')
  	Ingredient.create(title: 'Milk Chocolate Bar', price: '2.23', unit_measure: 'Each')
  	Ingredient.create(title: 'Milk, organic', price: '3.38', unit_measure: 'Cup')
  	Ingredient.create(title: 'Mushrooms, Button, whole', price: '3.48', unit_measure: 'Each')
  	Ingredient.create(title: 'Mushrooms, stems/pieces', price: '0.98', unit_measure: 'Each')
  	Ingredient.create(title: 'Mustard, dijon', price: '2.92', unit_measure: 'Tea Spoon')
  	Ingredient.create(title: 'Mustard, yellow', price: '0.84', unit_measure: 'Tea Spoon')
  	Ingredient.create(title: 'Nutella', price: '3.28', unit_measure: 'Tea Spoon')
  	Ingredient.create(title: 'Oat Meal', price: '1.68', unit_measure: '100g')
  	Ingredient.create(title: 'Oil, Canola, 100% pure', price: '3.58', unit_measure: 'Tea Spoon')
  	Ingredient.create(title: 'Oil, Olive, 100% pure', price: '4.88', unit_measure: 'Tea Spoon')
  	Ingredient.create(title: 'Oil, Olive, extra virgin', price: '5.58', unit_measure: 'Tea Spoon')
  	Ingredient.create(title: 'Onions, Brown', price: '3.48', unit_measure: 'Each')
  	Ingredient.create(title: 'Orange Juice, Cup', price: '2.12', unit_measure: 'Cup')
  	Ingredient.create(title: 'Oranges', price: '4.98', unit_measure: 'Each')
  	Ingredient.create(title: 'Ham, diced', price: '3.18', unit_measure: '100g')
  	Ingredient.create(title: 'Pasta, Egg Noodles', price: '1.68', unit_measure: '100g')
  	Ingredient.create(title: 'Pasta, Ellbow Maccaroni', price: '2.82', unit_measure: '100g')
  	Ingredient.create(title: 'Pasta, Penne Rigate', price: '1.08', unit_measure: '100g')
  	Ingredient.create(title: 'Pasta, Rotini/Rotelle/Fusilli', price: '1.08', unit_measure: '100g')
  	Ingredient.create(title: 'Pasta, Spaghetti', price: '1.88', unit_measure: '100g')
  	Ingredient.create(title: 'Peanut Butter', price: '2.56', unit_measure: 'Tea Spoon')
  	Ingredient.create(title: 'Peanuts, roasted', price: '2.88', unit_measure: '100g')
  	Ingredient.create(title: 'Pears', price: '1.77', unit_measure: 'Each')
  	Ingredient.create(title: 'Pepper, black, ground', price: '2.82', unit_measure: 'Tea Spoon')
  	Ingredient.create(title: 'Pizza Dough', price: '2.24', unit_measure: 'Each')
  	Ingredient.create(title: 'Pizza, frozen (premium)', price: '4.25', unit_measure: 'Each')
  	Ingredient.create(title: 'Pizza, frozen (simple)', price: '3.33', unit_measure: 'Each')
  	Ingredient.create(title: 'Pork Tenderloin, small', price: '3.98', unit_measure: 'Each')
  	Ingredient.create(title: 'Potatoes, gold (Yukon)', price: '4.47', unit_measure: 'Each')
  	Ingredient.create(title: 'Potatoes, red', price: '2.97', unit_measure: 'Each')
  	Ingredient.create(title: 'Potatoes, Russet ', price: '4.47', unit_measure: 'Each')
  	Ingredient.create(title: 'Preserves, strawberry', price: '2.08', unit_measure: '100g')
  	Ingredient.create(title: 'Pretzels', price: '2.98', unit_measure: '100g')
  	Ingredient.create(title: 'Red Cabbage', price: '2.98', unit_measure: '100g')
  	Ingredient.create(title: 'Ribs, Baby Back (pork, unseasoned)', price: '3.98', unit_measure: 'Each')
  	Ingredient.create(title: 'Ribs, Spare Back (pork, unseasoned)', price: '2.98', unit_measure: 'Each')
  	Ingredient.create(title: 'Rice, instant, white', price: '2.48', unit_measure: 'Cup')
  	Ingredient.create(title: 'Rice, regular', price: '1.28', unit_measure: 'Cup')
  	Ingredient.create(title: 'Salad Dressing', price: '1.66', unit_measure: 'Tea Spoon')
  	Ingredient.create(title: 'Salami, sliced', price: '2.48', unit_measure: '100g')
  	Ingredient.create(title: 'Salsa, medium', price: '1.98', unit_measure: 'Tea Spoon')
  	Ingredient.create(title: 'Salt, iodized', price: '0.72', unit_measure: 'Tea Spoon')
  	Ingredient.create(title: 'Soda, bottle', price: '1.38', unit_measure: 'Each')
  	Ingredient.create(title: 'Soda, bottle (Coke product)', price: '1.38', unit_measure: 'Each')
  	Ingredient.create(title: 'Soda, can', price: '3.98', unit_measure: 'Each')
  	Ingredient.create(title: 'Soup, Chicken Noodle, condensed', price: '0.64', unit_measure: 'Cup')
  	Ingredient.create(title: 'Soup, Chicken Noodle, regular', price: '1.48', unit_measure: 'Cup')
  	Ingredient.create(title: 'Soup, organic', price: '1.98', unit_measure: 'Cup')
  	Ingredient.create(title: 'Soup, Tomato, condensed', price: '0.64', unit_measure: 'Cup')
  	Ingredient.create(title: 'Soup, Tomato, regular', price: '1.48', unit_measure: 'Cup')
  	Ingredient.create(title: 'Sour Cream', price: '1.58', unit_measure: 'Tea Spoon')
  	Ingredient.create(title: 'Spaghetti Sauce', price: '1.33', unit_measure: 'Cup')
  	Ingredient.create(title: 'Sugar, brown', price: '1.88', unit_measure: 'Tea Spoon')
  	Ingredient.create(title: 'Sugar, powdered', price: '1.88', unit_measure: 'Tea Spoon')
  	Ingredient.create(title: 'Sugar, white', price: '2.88', unit_measure: 'Tea Spoon')
  	Ingredient.create(title: 'Syrup, breakfast', price: '1.98', unit_measure: 'Tea Spoon')
  	Ingredient.create(title: 'Tea, green, bags', price: '2.18', unit_measure: 'Each')
  	Ingredient.create(title: 'Tomato Paste', price: '0.44', unit_measure: 'Tea Spoon')
  	Ingredient.create(title: 'Tomato Sauce', price: '0.34', unit_measure: 'Tea Spoon')
  	Ingredient.create(title: 'Tomatoes, slicer', price: '1.74', unit_measure: 'Each')
  	Ingredient.create(title: 'Tuna, chunky, in water', price: '0.64', unit_measure: '100g')
  	Ingredient.create(title: 'Tuna, solid, in water', price: '1.12', unit_measure: '100g')
  	Ingredient.create(title: 'Veggies 1, frozen (peas)', price: '0.98', unit_measure: 'Cup')
  	Ingredient.create(title: 'Veggies 2, frozen (peas and carrots)', price: '1.28', unit_measure: 'Cup')
  	Ingredient.create(title: 'Waffles, frozen', price: '1.58', unit_measure: 'Each')
  	Ingredient.create(title: 'Water, regular/drinking', price: '3.98', unit_measure: 'Each')
  	Ingredient.create(title: 'Water, Sparkling/Mineral', price: '1.5', unit_measure: 'Each')
  	Ingredient.create(title: 'White Bread/Toast, enriched', price: '2.18', unit_measure: 'Each')
  	Ingredient.create(title: 'Wine, table, Cabernet', price: '2.97', unit_measure: 'Cup')
  	Ingredient.create(title: 'Wine, table, Chardonnay', price: '2.97', unit_measure: 'Cup')
  	Ingredient.create(title: 'Wine, table, White Zinfandel', price: '2.97', unit_measure: 'Cup')
  	Ingredient.create(title: 'Yoghurt, Dannon (etc.)', price: '2.18', unit_measure: 'Each')
  	Ingredient.create(title: 'Yogurt, Fage, 2%, plain', price: '1.27', unit_measure: 'Each')
  	Ingredient.create(title: 'Yogurt, Fage, w/ flavor', price: '1.27', unit_measure: 'Each')
  	Ingredient.create(title: 'Yogurt, flavored, cup', price: '0.33', unit_measure: 'Each')
  	Ingredient.create(title: 'Yogurt, greek style, plain', price: '4.88', unit_measure: 'Each')
  	Ingredient.create(title: 'Yogurt, plain', price: '2.18', unit_measure: 'Each')
  end
end
