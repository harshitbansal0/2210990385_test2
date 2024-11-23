//
//  Recipes.swift
//  2210990385_test2
//
//  Created by student-2 on 23/11/24.
//

import Foundation
import UIKit

struct Recipe {
    let title: String
    let imageName: String
    let ingredients: String
    let instructions: String
    let calories: Int
    let time: String
    let section: String
}

var recipes = [
    Recipe(
        title: "Carbonara",
        imageName: "carbonara",
        ingredients: "• Spaghetti\n• Eggs\n• Pancetta\n• Parmesan\n• Black Pepper",
        instructions: """
        1. Boil spaghetti in salted water.
        2. Fry pancetta until crispy.
        3. Beat eggs and mix with grated Parmesan.
        4. Combine hot pasta, pancetta, and egg mixture. Season with black pepper.
        """,
        calories: 1000,
        time: "10 mins",
        section: "Dinner"
    ),
    Recipe(
        title: "Chicken Alfredo",
        imageName: "alfredo",
        ingredients: "• Fettuccine\n• Chicken\n• Cream\n• Butter\n• Parmesan",
        instructions: """
        1. Cook fettuccine in salted water.
        2. Sauté chicken in butter until golden.
        3. Prepare Alfredo sauce by mixing cream, butter, and Parmesan.
        4. Combine pasta, chicken, and sauce. Serve hot.
        """,
        calories: 150,
        time: "20 mins",
        section: "Lunch"
    ),
    Recipe(
        title: "Caprese Salad",
        imageName: "caprese",
        ingredients: "• Tomatoes\n• Mozzarella\n• Basil\n• Olive Oil\n• Balsamic Glaze",
        instructions: """
        1. Slice tomatoes and mozzarella.
        2. Arrange on a plate with basil leaves.
        3. Drizzle olive oil and balsamic glaze on top.
        """,
        calories: 200,
        time: "11 mins",
        section: "Breakfast"
    ),
    Recipe(
        title: "Spaghetti Bolognese",
        imageName: "caprese",
        ingredients: "• Spaghetti\n• Ground Beef\n• Tomato Sauce\n• Onions\n• Garlic",
        instructions: """
        1. Cook spaghetti in salted water.
        2. Sauté onions and garlic, then add ground beef.
        3. Add tomato sauce and simmer.
        4. Serve sauce over spaghetti and garnish with Parmesan.
        """,
        calories: 500,
        time: "25 mins",
        section: "Dinner"
    ),
    Recipe(
        title: "Grilled Chicken Caesar Salad",
        imageName: "caprese",
        ingredients: "• Romaine Lettuce\n• Grilled Chicken\n• Caesar Dressing\n• Croutons\n• Parmesan",
        instructions: """
        1. Chop romaine lettuce and place in a bowl.
        2. Slice grilled chicken and add to the lettuce.
        3. Top with Caesar dressing, croutons, and Parmesan.
        """,
        calories: 350,
        time: "15 mins",
        section: "Lunch"
    ),
    Recipe(
        title: "Avocado Toast",
        imageName: "carbonara",
        ingredients: "• Bread\n• Avocado\n• Salt\n• Pepper\n• Lemon Juice",
        instructions: """
        1. Toast bread slices until golden.
        2. Mash avocado and season with salt, pepper, and lemon juice.
        3. Spread avocado mix on toasted bread.
        """,
        calories: 250,
        time: "5 mins",
        section: "Breakfast"
    ),
    Recipe(
        title: "Vegetable Stir Fry",
        imageName: "alfredo",
        ingredients: "• Mixed Vegetables\n• Soy Sauce\n• Garlic\n• Ginger\n• Olive Oil",
        instructions: """
        1. Heat olive oil in a pan.
        2. Add garlic and ginger, then stir-fry vegetables.
        3. Add soy sauce and toss until coated.
        """,
        calories: 300,
        time: "12 mins",
        section: "Dinner"
    ),
    Recipe(
        title: "Turkey Sandwich",
        imageName: "carbonara",
        ingredients: "• Bread\n• Turkey\n• Lettuce\n• Tomato\n• Mayonnaise",
        instructions: """
        1. Spread mayonnaise on bread slices.
        2. Add turkey, lettuce, and tomato slices.
        3. Assemble the sandwich and serve.
        """,
        calories: 400,
        time: "10 mins",
        section: "Lunch"
    ),
    Recipe(
        title: "Pancakes",
        imageName: "alfredo",
        ingredients: "• Flour\n• Eggs\n• Milk\n• Sugar\n• Maple Syrup",
        instructions: """
        1. Mix flour, eggs, milk, and sugar into a batter.
        2. Pour batter into a hot pan and cook until golden on both sides.
        3. Serve with maple syrup.
        """,
        calories: 350,
        time: "15 mins",
        section: "Breakfast"
    )
]
