import 'package:flutter/material.dart';
import 'details_screen.dart';

class HomeScreen extends StatelessWidget {
  final List<Map<String, dynamic>> recipes = [
    {
      'name': 'Spaghetti Carbonara',
      'ingredients': ['Spaghetti', 'Eggs', 'Parmesan cheese', 'Pancetta', 'Black pepper'],
      'instructions': '1. Boil the spaghetti.\n2. Cook the pancetta.\n3. Mix eggs and Parmesan cheese.\n4. Combine everything and season with black pepper.',
    },
    {
      'name': 'Chicken Tacos',
      'ingredients': ['Chicken breast', 'Taco seasoning', 'Tortillas', 'Lettuce', 'Cheese', 'Salsa'],
      'instructions': '1. Cook the chicken with taco seasoning.\n2. Warm the tortillas.\n3. Assemble the tacos with lettuce, cheese, and salsa.',
    },
    {
      'name': 'Chocolate Chip Cookies',
      'ingredients': ['Flour', 'Sugar', 'Butter', 'Eggs', 'Chocolate chips', 'Baking soda', 'Vanilla extract'],
      'instructions': '1. Mix dry ingredients.\n2. Add wet ingredients and mix.\n3. Fold in chocolate chips.\n4. Bake at 350°F for 10-12 minutes.',
    },
    {
      'name': 'Nachos',
      'ingredients': ['Tortilla chips', 'Ground beef', 'Cheddar cheese', 'Jalapeños', 'Sour cream', 'Salsa', 'Guacamole'],
      'instructions': '1. Cook ground beef and season with taco spices.\n2. Spread tortilla chips on a baking sheet.\n3. Top with ground beef, cheese, and jalapeños.\n4. Bake at 350°F until cheese is melted.\n5. Serve with sour cream, salsa, and guacamole.',
    },
    {
      'name': 'Pizza',
      'ingredients': ['Pizza dough', 'Tomato sauce', 'Mozzarella cheese', 'Pepperoni', 'Olive oil', 'Basil leaves'],
      'instructions': '1. Roll out the pizza dough.\n2. Spread tomato sauce on the dough.\n3. Add mozzarella and pepperoni.\n4. Drizzle olive oil on top.\n5. Bake at 475°F for 10-12 minutes.\n6. Garnish with basil leaves before serving.',
    },
    {
      'name': 'Buffalo Chicken Sandwich',
      'ingredients': ['Chicken breasts', 'Buffalo sauce', 'Burger buns', 'Lettuce', 'Blue cheese dressing'],
      'instructions': '1. Cook chicken breasts and coat with buffalo sauce.\n2. Toast the burger buns.\n3. Place the chicken on the buns.\n4. Top with lettuce and blue cheese dressing.\n5. Serve immediately.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Ri's Recipes",
          style: TextStyle(
            fontWeight: FontWeight.bold, 
            color: Colors.white, 
            fontSize: 24, 
          ),
        ),
        backgroundColor: Color(0xFF2e004f), 
      ),
      body: Container(
        color: Color(0xFF2e004f),
        child: ListView.builder(
          itemCount: recipes.length,
          itemBuilder: (context, index) {
            return Card(
              color: Colors.white,
              margin: EdgeInsets.all(8.0),
              elevation: 5,
              child: ListTile(
                leading: Icon(Icons.restaurant_menu, color: Colors.orange),
                title: Text(recipes[index]['name'], style: TextStyle(fontWeight: FontWeight.bold)),
                trailing: Icon(Icons.arrow_forward, color: Colors.grey),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailsScreen(recipe: recipes[index]),
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
