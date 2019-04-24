//
//  main.swift
//  RecoverME
//
//  Created by Conor Huh on 4/24/19.
//  Copyright © 2019 Nic Dillon. All rights reserved.
//

import Foundation

import SQLite


let path = NSSearchPathForDirectoriesInDomains(.documentDirectory,.userDomainMask,true).first!

let db = try! Connection("\(path)/db.sqlite.3")

let snacks = Table("snacks")

let id = Expression<Int64>("id")
let amount = Expression<String>("amount")
let name = Expression<String>("name")
let type = Expression<String>("type")
let calories = Expression<Int64>("calories")
let macro = Expression<String>("macro")
let drawback = Expression<String>("drawback")


try db.run(snacks.create(ifNotExists: true) { t in
    t.column(id, primaryKey: .autoincrement)
    t.column(amount)
    t.column(name, unique: true)
    t.column(type)
    t.column(calories)
    t.column(macro)
    t.column(drawback)
})

do {
    try db.run(snacks.insert(amount <- "1 Cup", name <- "Chocolate Milk", type <- "Milk", calories <- 208, macro <- "Protein 7.9 grams", drawback <- "Fat 8.5 grams"))
    
    try db.run(snacks.insert(amount <- "2 Tbsp", name <- "Peanut Butter", type <- "Nuts", calories <- 188, macro <- "Protein 7.0 grams", drawback <- "Fat 16.0 grams"))
    
    try db.run(snacks.insert(amount <- "1 Breast", name <- "Chicken Breast", type <- "Protein", calories <- 198, macro <- "Protein 37.0 grams"))
    
    try db.run(snacks.insert(amount <- "1 Filet", name <- "Salmon", type <- "Fish", calories <- 468, macro <- "Protein 50.0 grams", drawback <- "Fat 28.0 grams"))
    
    try db.run(snacks.insert(amount <- "4 Ounces", name <- "Ground Turkey", type <- "Protein", calories <- 292, macro <- "Protein 28.0 grams", drawback <- "Fat 20.0 grams"))
    
    try db.run(snacks.insert(amount <- "2 Tbsp", name <- "Almond Butter", type <- "Nuts", calories <- 196, macro <- "Protein 6.8 grams", drawback <- "Fat 17.8 grams"))
    
    try db.run(snacks.insert(amount <- "1", name <- "Banana", type <- "Fruit", calories <- 105, macro <- "Carbohydrates 27.0 grams"))
    
    try db.run(snacks.insert(amount <- "1", name <- "Apple", type <- "Fruit", calories <- 95, macro <- "Carbohydrates 25.0 grams"))
    
    try db.run(snacks.insert(amount <- "4 Ounces", name <- "Tuna", type <- "Fish", calories <- 148, macro <- "Protein 34.0 grams"))
    
    try db.run(snacks.insert(amount <- "1 Stalk", name <- "Broccoli", type <- "Vegetable", calories <- 13, macro <- "Carbohydrates 2.7 grams"))
    
    try db.run(snacks.insert(amount <- "1 Cup", name <- "Brown Rice", type <- "Grain", calories <- 218, macro <- "Carbohydrates 46.0 grams"))
    
    try db.run(snacks.insert(amount <- "1 Scoop", name <- "Protein Powder", type <- "Protein", calories <- 113, macro <- "Protein 25.0 grams"))
    
    try db.run(snacks.insert(amount <- "1", name <- "Avocado", type <- "Fruit", calories <- 227, macro <- "Protein 2.7 grams", drawback <- "Fat 21.0 grams"))
    
    try db.run(snacks.insert(amount <- "1", name <- "Egg", type <- "Protein", calories <- 72, macro <- "Protein 6.3 grams", drawback <- "Fat 4.8 grams"))
    
    try db.run(snacks.insert(amount <- "1 Cup", name <- "Oatmeal", type <- "Grain", calories <- 166, macro <- "Carbohydrates 28.0 grams"))
    
    try db.run(snacks.insert(amount <- "1", name <- "Sweet Potato", type <- "Vegetable", calories <- 120, macro <- "Carbohydrates 27.0 grams"))
    
    try db.run(snacks.insert(amount <- "1 Cup", name <- "Kale", type <- "Vegetable", calories <- 36, macro <- "Carbohydrates 7.3 grams"))
    
    try db.run(snacks.insert(amount <- "1 Cup", name <- "Pasta", type <- "Grain", calories <- 196, macro <- "Carbohydrates 38.0 grams"))
    
    try db.run(snacks.insert(amount <- "1 Cup", name <- "Spinach", type <- "Vegetable", calories <- 41, macro <- "Carbohydrates 6.3 grams", drawback <- "Protein 5.3 grams"))
    
    try db.run(snacks.insert(amount <- "1", name <- "Carrot", type <- "Vegetable", calories <- 16, macro <- "Carbohydrates 3.8 grams"))
    
    try db.run(snacks.insert(amount <- "1 Cup", name <- "Hummus", type <- "Dip", calories <- 400, macro <- "Protein 18.8 grams", drawback <- "Carbohydrates 34.4 grams"))
    
    try db.run(snacks.insert(amount <- "10 Chips", name <- "Tortilla Chips", type <- "Grain", calories <- 140, macro <- "Carbohydrates 20.0 grams", drawback <- "Fat 6.2 grams"))
    
    try db.run(snacks.insert(amount <- "1 Tbsp", name <- "Salsa", type <- "Dip", calories <- 5, macro <- "Carbohydrates 2.4 grams"))
    
    try db.run(snacks.insert(amount <- "10", name <- "Almonds", type <- "Nuts", calories <- 77, macro <- "Protein 2.7 grams", drawback <- "Fat 6.8 grams"))
    
    try db.run(snacks.insert(amount <- "10", name <- "Cashews", type <- "Nuts", calories <- 90, macro <- "Protein 2.4 grams", drawback <- "Fat 7.3 grams"))
    
    try db.run(snacks.insert(amount <- "1 Tbsp", name <- "Queso", type <- "Dip", calories <- 71, macro <- "Protein 3.8 grams", drawback <- "Fat 5.0 grams"))
    
    try db.run(snacks.insert(amount <- "6 Ounces", name <- "Greek Yogurt", type <- "Protein", calories <- 100, macro <- "Protein 17.0 grams"))
    
    try db.run(snacks.insert(amount <- "1 Cup", name <- "Cottage Cheese", type <- "Protein", calories <- 214, macro <- "Protein 24.0 grams", drawback <- "Fat 9.4 grams"))
    
    try db.run(snacks.insert(amount <- "2 Slices", name <- "Whole Grain Bread", type <- "Grain", calories <- 162, macro <- "Carbohydrates 28.0 grams", drawback <- "Protein 8.0 grams"))
    
    try db.run(snacks.insert(amount <- "1 Cup", name <- "Skim Milk", type <- "Milk", calories <- 83, macro <- "Protein 8.3 grams", drawback <- "Carbohydrates 12.0 grams"))
    
    try db.run(snacks.insert(amount <- "10", name <- "Strawberries", type <- "Fruit", calories <- 58, macro <- "Carbohydrates 13.8 grams"))
    
    try db.run(snacks.insert(amount <- "10", name <- "Blueberries", type <- "Fruit", calories <- 8, macro <- "Carbohydrates 2.0 grams"))
    
    try db.run(snacks.insert(amount <- "1 Cup", name <- "Granola", type <- "Grain", calories <- 596, macro <- "Carbohydrates 66.0 grams", drawback <- "Protein 16.6 grams"))
    
    try db.run(snacks.insert(amount <- "1 Cup", name <- "Quinoa", type <- "Grain", calories <- 222, macro <- "Carbohydrates 33.0 grams", drawback <- "Protein 5.5 grams"))
    
    try db.run(snacks.insert(amount <- "1", name <- "Rice Cracker", type <- "Grain", calories <- 8, macro <- "Carbohydrates 2.0 grams"))
    
    try db.run(snacks.insert(amount <- "1", name <- "Pita", type <- "Grain", calories <- 165, macro <- "Carbohydrates 33.0 grams", drawback <- "Protein 5.5 grams"))
    
    try db.run(snacks.insert(amount <- "10", name <- "Grapes", type <- "Fruit", calories <- 34, macro <- "Carbohydrates 8.9 grams"))
    
    try db.run(snacks.insert(amount <- "1 Ounce", name <- "Beef Jerky", type <- "Protein", calories <- 116, macro <- "Protein 9.4 grams"))
    
    try db.run(snacks.insert(amount <- "1 Wedge", name <- "Watermelon", type <- "Fruit", calories <- 86, macro <- "Carbohydrates 22.0 grams"))
    
    try db.run(snacks.insert(amount <- "1", name <- "Pear", type <- "Fruit", calories <- 100, macro <- "Carbohydrates 27.0 grams"))
    
    try db.run(snacks.insert(amount <- "1 Block", name <- "Tofu", type <- "Protein", calories <- 380, macro <- "Protein 45.5 grams", drawback <- "Fat 24.0 grams"))
    
    try db.run(snacks.insert(amount <- "1 Cup", name <- "Black Beans", type <- "Protein", calories <- 662, macro <- "Protein 42.0 grams", drawback <- "Carbohydrates 121.0 grams"))
    
    try db.run(snacks.insert(amount <- "1", name <- "Potato", type <- "Vegetable", calories <- 161, macro <- "Carbohydrates 37.0 grams"))
    
    try db.run(snacks.insert(amount <- "1", name <- "Squash", type <- "Vegetable", calories <- 40, macro <- "Carbohydrates 6.8 grams"))
    
    try db.run(snacks.insert(amount <- "1", name <- "Zucchini", type <- "Vegetable", calories <- 33, macro <- "Carbohydrates 5.8 grams"))
    
    try db.run(snacks.insert(amount <- "1", name <- "Cauliflower", type <- "Vegetable", calories <- 132, macro <- "Carbohydrates 24.0 grams"))
    
    try db.run(snacks.insert(amount <- "8 Ounces", name <- "Ground Beef", type <- "Protein", calories <- 616, macro <- "Protein 62.0 grams", drawback <- "Fat 40.0 grams"))
    
    try db.run(snacks.insert(amount <- "10 Spears", name <- "Asparagus", type <- "Vegetable", calories <- 34, macro <- "Carbohydrates 6.2 grams"))
    
    try db.run(snacks.insert(amount <- "10", name <- "Grean Beans", type <- "Vegetable", calories <- 22, macro <- "Carbohydrates 5.0 grams"))
    
} catch let Result.error(message, code, statement) where code == SQLITE_CONSTRAINT {
    print("constraint failed: \(message), in \(statement)")
} catch let error {
    print("insertion failed: \(error)")
}


