//
//  Product.swift
//  InventoryUI
//
//  Created by Cory D. Wiles on 1/12/21.
//

import Foundation

enum ProductCategory: String {
    
    case healthAndFitness = "Health & Fitness"
    case entertainment = "Entertainment"
    case books = "Books"
    case clothing = "Clothing"
    case electronic = "Electronic"
}

struct Product: Identifiable {
    
    // MARK: Internal (properties)
    
    let id: UUID = UUID()
    
    let imageName: String
    
    let name: String
    
    let category: ProductCategory
    
    let description: String
    
    let datePurchased: Date
}

let sampleData: Array<Product> = [
    Product(imageName: "blue.disk", name: "Disk", category: .entertainment, description: "A really cool blue disk", datePurchased: Date()),
    Product(imageName: "candles", name: "Candles", category: .entertainment, description: "Really cool candles", datePurchased: Date()),
    Product(imageName: "drone", name: "Drone", category: .entertainment, description: "A really cool drone", datePurchased: Date()),
    Product(imageName: "girl.green.barn.door", name: "Shirt and Dress", category: .entertainment, description: "A really cool outfit", datePurchased: Date()),
    Product(imageName: "purple.cabbage.soup", name: "Cookware", category: .entertainment, description: "Really cool cookware", datePurchased: Date()),
    Product(imageName: "ring", name: "Ring", category: .entertainment, description: "A really cool ring", datePurchased: Date()),
    Product(imageName: "watch", name: "Watch", category: .entertainment, description: "A really cool watch", datePurchased: Date()),
]
