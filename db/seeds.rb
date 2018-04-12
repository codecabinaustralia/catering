User::HABTM_Roles.create!([
  {user_id: 1, role_id: 1}
])
Role::HABTM_Users.create!([
  {user_id: 1, role_id: 1}
])
User.create!([
  {email: "info@theblackandwhites.com.au", encrypted_password: "$2a$11$DTcvDv5Pal86Fsxs2iABF.6MCTW7DH4/QN7QP8WKtrsCqRQqaj0Sm", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 2, current_sign_in_at: "2018-04-11 23:46:47", last_sign_in_at: "2018-03-25 01:57:24", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", family_member: nil, boolean: nil, patient_id: nil},
  {email: "josh@codecabin.com.au", encrypted_password: "$2a$11$ceVU5D72xBbx5IlAcEeIP./5Lz3xDXDKMvjcJHjN2.3u4yakBWmye", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2018-03-28 02:09:19", last_sign_in_at: "2018-03-28 02:09:19", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", family_member: nil, boolean: nil, patient_id: nil},
  {email: "family1@family1.com.au", encrypted_password: "$2a$11$8OeehQcfudeBADz/l0gEted3zZV59csTOhlPN/KXBQJ9xBA/Y1CN6", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2018-04-12 05:57:08", last_sign_in_at: "2018-04-12 05:57:08", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", family_member: "true", boolean: "true", patient_id: 1}
])
Meal.create!([
  {title: "Green fish curry", meal_option_id: 8, notes: nil, available_date: "2018-05-17", preloaded_meal_id: 2, relationship_code: "qL2azQ8", the_date: nil},
  {title: "Green fish curry", meal_option_id: 8, notes: nil, available_date: "2018-04-13", preloaded_meal_id: 2, relationship_code: "qL2azQ8", the_date: "2018-04-12"},
  {title: "Lamb shank rogan josh curry", meal_option_id: 9, notes: nil, available_date: "2018-05-17", preloaded_meal_id: 3, relationship_code: "bS2Ijb8", the_date: nil},
  {title: "Lamb shank rogan josh curry", meal_option_id: 9, notes: nil, available_date: "2018-04-13", preloaded_meal_id: 3, relationship_code: "bS2Ijb8", the_date: "2018-04-12"},
  {title: " Pineapple dump cake", meal_option_id: 10, notes: nil, available_date: "2018-05-17", preloaded_meal_id: 4, relationship_code: "CWQzxFE", the_date: nil},
  {title: " Pineapple dump cake", meal_option_id: 10, notes: nil, available_date: "2018-04-13", preloaded_meal_id: 4, relationship_code: "CWQzxFE", the_date: "2018-04-12"},
  {title: "Orange", meal_option_id: 13, notes: nil, available_date: "2018-05-17", preloaded_meal_id: 9, relationship_code: "y6U3Skc", the_date: nil},
  {title: "Orange", meal_option_id: 13, notes: nil, available_date: "2018-04-13", preloaded_meal_id: 9, relationship_code: "y6U3Skc", the_date: "2018-04-12"},
  {title: "Gluten-free crumpets", meal_option_id: 14, notes: nil, available_date: "2018-05-17", preloaded_meal_id: 12, relationship_code: "yKWgsGE", the_date: nil},
  {title: "Gluten-free crumpets", meal_option_id: 14, notes: nil, available_date: "2018-04-13", preloaded_meal_id: 12, relationship_code: "yKWgsGE", the_date: "2018-04-12"},
  {title: "Brekkie eggs with mayo", meal_option_id: 18, notes: nil, available_date: "2018-05-17", preloaded_meal_id: 10, relationship_code: "pf-hpbQ", the_date: nil},
  {title: "Brekkie eggs with mayo", meal_option_id: 18, notes: nil, available_date: "2018-04-13", preloaded_meal_id: 10, relationship_code: "pf-hpbQ", the_date: "2018-04-12"},
  {title: "Lamb shank rogan josh curry", meal_option_id: 22, notes: nil, available_date: "2018-05-17", preloaded_meal_id: 3, relationship_code: "yaYSWuE", the_date: nil},
  {title: "Lamb shank rogan josh curry", meal_option_id: 22, notes: nil, available_date: "2018-04-13", preloaded_meal_id: 3, relationship_code: "yaYSWuE", the_date: "2018-04-12"},
  {title: "Nutty coffee granola", meal_option_id: 24, notes: nil, available_date: "2018-05-17", preloaded_meal_id: 15, relationship_code: "SyHa2dE", the_date: nil},
  {title: "Nutty coffee granola", meal_option_id: 24, notes: nil, available_date: "2018-04-13", preloaded_meal_id: 15, relationship_code: "SyHa2dE", the_date: "2018-04-12"}
])
MealCategory.create!([
  {title: "Breakfast"},
  {title: "Morning Tea"},
  {title: "Lunch"},
  {title: "Afternoon Tea"},
  {title: "Dinner"},
  {title: "Dessert"}
])
MealOption.create!([
  {title: "Hot Breakfast", meal_category_id: 1, color: "#d63e85"},
  {title: "Cereal", meal_category_id: 1, color: "#ba08c7"},
  {title: "Yoghurt", meal_category_id: 1, color: "#873366"},
  {title: "Toast", meal_category_id: 1, color: "#f74aa3"},
  {title: "Fruit", meal_category_id: 1, color: "#8c0347"},
  {title: "Fruit", meal_category_id: 2, color: "#d10c0c"},
  {title: "Sandwich", meal_category_id: 3, color: "#e81c1c"},
  {title: "Drink", meal_category_id: 3, color: "#750101"},
  {title: "Fruit", meal_category_id: 3, color: "#b54848"},
  {title: "Drink", meal_category_id: 4, color: "#345499"},
  {title: "Fruit", meal_category_id: 4, color: "#142a5c"},
  {title: "Cheese and Crackers", meal_category_id: 4, color: "#127aa3"},
  {title: "Main Meal", meal_category_id: 5, color: "#10a341"},
  {title: "Supplementary Main", meal_category_id: 5, color: "#006624"},
  {title: "Soup", meal_category_id: 5, color: "#00cc4b"},
  {title: "Drink", meal_category_id: 5, color: "#00cc4b"},
  {title: "Dessert", meal_category_id: 6, color: "#e6441c"},
  {title: "Drink", meal_category_id: 6, color: "#991f00"}
])
Patient.create!([
  {first_name: "James", last_name: "Barber", room_number: "A456", allergies: nil, diet_type: "Nil", diet_texture: "Solid", fluid_consistency: "Nil", fluid_restriction: "Nil", likes: "Peppermint Tea", dislikes: "Bread", extra_information: nil, ward_id: 1, avatar: nil},
  {first_name: "Bob", last_name: "Marley", room_number: "456", allergies: "Asthma", diet_type: "Medium Build", diet_texture: "Solid", fluid_consistency: "Water", fluid_restriction: "None", likes: "chocolate", dislikes: "Vegemite", extra_information: "Can be quite agressive if told what to do.", ward_id: 1, avatar: "oldman2.jpg"}
])
PatientMeal.create!([
  {patient_id: 1, meal_id: 1249, delivery_date: "2018-04-13", meal_option_id: 8, diet_texture: "Solid", fluid_consistency: "Nil", order_id: 28},
  {patient_id: 1, meal_id: 1251, delivery_date: "2018-04-13", meal_option_id: 9, diet_texture: "Solid", fluid_consistency: "Nil", order_id: 28},
  {patient_id: 1, meal_id: 1253, delivery_date: "2018-04-13", meal_option_id: 10, diet_texture: "Solid", fluid_consistency: "Nil", order_id: 28},
  {patient_id: 1, meal_id: 1251, delivery_date: "2018-04-13", meal_option_id: 9, diet_texture: "Solid", fluid_consistency: "Nil", order_id: 28},
  {patient_id: 1, meal_id: 1251, delivery_date: "2018-04-13", meal_option_id: 9, diet_texture: "Solid", fluid_consistency: "Nil", order_id: 28},
  {patient_id: 1, meal_id: 1249, delivery_date: "2018-04-13", meal_option_id: 8, diet_texture: "Solid", fluid_consistency: "Nil", order_id: nil},
  {patient_id: 1, meal_id: 1249, delivery_date: "2018-04-13", meal_option_id: 8, diet_texture: "Solid", fluid_consistency: "Nil", order_id: nil},
  {patient_id: 1, meal_id: 1257, delivery_date: "2018-04-13", meal_option_id: 14, diet_texture: "Solid", fluid_consistency: "Nil", order_id: nil},
  {patient_id: 1, meal_id: 1261, delivery_date: "2018-04-13", meal_option_id: 22, diet_texture: "Solid", fluid_consistency: "Nil", order_id: nil}
])
PreloadedMeal.create!([
  {title: "Green fish curry", ingredients: "1/3 cup (100g) green curry paste\r\n400ml can coconut cream\r\n600g white fish fillets (such as basa or pink ling), coarsely chopped\r\n125g pkt baby corn, sliced diagonally\r\n200g snow peas, halved", nutritional_info: "1519 kj ENERGY\r\n21g FAT TOTAL\r\n16g SATURATED FAT\r\n4g FIBRE\r\n34g PROTEIN\r\n700mg SODIUM\r\n6g CARBS (SUGAR)\r\n8g CARBS (TOTAL)", notes: "Does contain gluten and dairy products"},
  {title: "Lamb shank rogan josh curry", ingredients: "4 Lamb Shanks, French trimmed\r\n2 brown onions, cut into wedges\r\n1/2 cup (125g) rogan josh curry paste\r\n500g Greek-style yoghurt\r\n300g green beans, ends trimmed", nutritional_info: "1519 kj ENERGY\r\n21g FAT TOTAL\r\n16g SATURATED FAT\r\n4g FIBRE\r\n34g PROTEIN\r\n700mg SODIUM\r\n6g CARBS (SUGAR)\r\n8g CARBS (TOTAL)", notes: "Does contain gluten and dairy products"},
  {title: " Pineapple dump cake", ingredients: "470g pkt traditional carrot cake baking mix, cake mix only\r\n1 carrot, peeled, coarsely grated\r\n432g can crushed pineapple in juice\r\n125g butter, melted\r\n1/2 cup (125ml) milk\r\nIcing sugar mixture, to dust\r\nDouble cream or vanilla custard, to serve (optional)", nutritional_info: "1519 kj ENERGY\r\n21g FAT TOTAL\r\n16g SATURATED FAT\r\n4g FIBRE\r\n34g PROTEIN\r\n700mg SODIUM\r\n6g CARBS (SUGAR)\r\n8g CARBS (TOTAL)", notes: "Does contain gluten and dairy products"},
  {title: " Salmon with parsley salad", ingredients: "2 tablespoons lemon-infused extra virgin olive oil\r\n4 (about 120g each) salmon fillets, skin-on\r\n1 cup flat-leaf parsley leaves\r\n500g cherry tomatoes, halved\r\n2 spring onions, thinly sliced", nutritional_info: "1519 kj ENERGY\r\n21g FAT TOTAL\r\n16g SATURATED FAT\r\n4g FIBRE\r\n34g PROTEIN\r\n700mg SODIUM\r\n6g CARBS (SUGAR)\r\n8g CARBS (TOTAL)", notes: "Does contain gluten and dairy products"},
  {title: "Lamb and soba noodles", ingredients: "12 Lamb Cutlets, excess fat trimmed\r\n270g soba noodles\r\n1 zucchini, cut into long matchsticks\r\n1 carrot, peeled, cut into long matchsticks\r\n1/3 cup (80ml) oriental noodle salad dressing", nutritional_info: "1519 kj ENERGY\r\n21g FAT TOTAL\r\n16g SATURATED FAT\r\n4g FIBRE\r\n34g PROTEIN\r\n700mg SODIUM\r\n6g CARBS (SUGAR)\r\n8g CARBS (TOTAL)", notes: "Does contain gluten and dairy products"},
  {title: "Tuna melt bake", ingredients: "75g butter\r\n1 brown onion, finely chopped\r\n2 garlic cloves, crushed\r\n500g cauliflower, roughly chopped\r\n2 teaspoons finely chopped fresh thyme leaves\r\n1⁄4 cup plain flour\r\n3⁄4 cup milk\r\n3⁄4 cup salt-reduced chicken stock\r\n1 teaspoon dijon mustard\r\n11⁄2 cups grated tasty cheese\r\n425g can tuna in olive oil, drained, flaked\r\n1 cup frozen peas\r\n60g baby spinach\r\n5 slices (180g) white crusty bread, roughly chopped\r\n1 tablespoon finely chopped fresh flat-leaf parsley leaves\r\n2 tablespoons finely grated parmesan", nutritional_info: "1519 kj ENERGY\r\n21g FAT TOTAL\r\n16g SATURATED FAT\r\n4g FIBRE\r\n34g PROTEIN\r\n700mg SODIUM\r\n6g CARBS (SUGAR)\r\n8g CARBS (TOTAL)", notes: "Does contain gluten and dairy products"},
  {title: "Apple", ingredients: "", nutritional_info: "", notes: ""},
  {title: "Orange", ingredients: "", nutritional_info: "", notes: ""},
  {title: "Brekkie eggs with mayo", ingredients: "1 tablespoon white vinegar\r\n4 eggs\r\n2 English muffins, split, toasted\r\nButter, at room temperature\r\nBaby rocket leaves, to serve\r\n1 avocado, peeled, thinly sliced\r\n1 tablespoon fried shallots", nutritional_info: "1519 kj ENERGY\r\n21g FAT TOTAL\r\n16g SATURATED FAT\r\n4g FIBRE\r\n34g PROTEIN\r\n700mg SODIUM\r\n6g CARBS (SUGAR)\r\n8g CARBS (TOTAL)", notes: ""},
  {title: "Brekkie crumble", ingredients: "5 Arnott's Rice cookies\r\n1/2 cup salted roasted cashews\r\n2 tablespoons pistachios\r\n2 tablespoons sesame seeds\r\n1/4 cup rolled oats\r\n2 tablespoons coconut oil\r\n1/2 teaspoon ground cinnamon\r\n1 tablespoon cacao nibs\r\n4 Medjool dates, pitted\r\nFresh fruit, to serve\r\nYoghurt, to serve\r\nHoney, to serve", nutritional_info: "1519 kj ENERGY\r\n21g FAT TOTAL\r\n16g SATURATED FAT\r\n4g FIBRE\r\n34g PROTEIN\r\n700mg SODIUM\r\n6g CARBS (SUGAR)\r\n8g CARBS (TOTAL)", notes: ""},
  {title: "Gluten-free crumpets", ingredients: "1 1/2 cups gluten-free plain flour\r\n1 teaspoon dried yeast\r\n1 teaspoon caster sugar\r\n1 cup milk, warmed\r\n1 tablespoon vegetable oil\r\nButter, to serve\r\nGluten-free jam, to serve", nutritional_info: "1519 kj ENERGY\r\n21g FAT TOTAL\r\n16g SATURATED FAT\r\n4g FIBRE\r\n34g PROTEIN\r\n700mg SODIUM\r\n6g CARBS (SUGAR)\r\n8g CARBS (TOTAL)", notes: ""},
  {title: "Eggs baked with leek and pancetta", ingredients: "Olive oil, to grease\r\n10g butter\r\n1 (about 200g) leek, pale section only, thinly sliced, washed, dried\r\n1 garlic clove, crushed\r\n6 slices (about 75g) mild pancetta, coarsely chopped\r\n80ml (1/3 cup) thin cream\r\n4 eggs\r\nFreshly ground black pepper\r\n4 slices rye bread, toasted, buttered, cut into fingers to serve", nutritional_info: "1519 kj ENERGY\r\n21g FAT TOTAL\r\n16g SATURATED FAT\r\n4g FIBRE\r\n34g PROTEIN\r\n700mg SODIUM\r\n6g CARBS (SUGAR)\r\n8g CARBS (TOTAL)", notes: ""},
  {title: "Granola pancakes", ingredients: "125g (1 cup) granola\r\n50g (1/2 cup) rolled oats\r\n2 bananas, peeled\r\n2 eggs\r\n250ml (1 cup) low-fat milk\r\n1/4 teaspoon baking powder\r\nCoconut or Greek-style yoghurt, to serve\r\nMaple syrup, to serve\r\nRaspberries, to serve\r\nStrawberries, to serve", nutritional_info: "1519 kj ENERGY\r\n21g FAT TOTAL\r\n16g SATURATED FAT\r\n4g FIBRE\r\n34g PROTEIN\r\n700mg SODIUM\r\n6g CARBS (SUGAR)\r\n8g CARBS (TOTAL)", notes: ""},
  {title: "Nutty coffee granola", ingredients: "3 cups traditional rolled oats\r\n1/2 cup pepitas\r\n1 cup raw cashews\r\n2/3 cup skinless hazelnuts\r\n1 teaspoon ground cinnamon\r\n1 teaspoon ground ginger\r\n1/2 teaspoon mixed spice\r\n1/4 cup honey\r\n1/4 cup strong brewed coffee\r\n1 tablespoon coconut oil, melted\r\n2 teaspoons vanilla extract\r\n1/2 cup coconut flakes", nutritional_info: "1519 kj ENERGY\r\n21g FAT TOTAL\r\n16g SATURATED FAT\r\n4g FIBRE\r\n34g PROTEIN\r\n700mg SODIUM\r\n6g CARBS (SUGAR)\r\n8g CARBS (TOTAL)", notes: ""}
])
Site.create!([
  {name: "Gold Coast", user_id: 1},
  {name: "Sydney", user_id: 2},
  {name: "Brisbane", user_id: 2}
])
Ward.create!([
  {name: "Ward 1", site_id: 2},
  {name: "Ward 1", site_id: 3}
])
