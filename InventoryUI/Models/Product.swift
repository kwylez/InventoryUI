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
    case kitchen = "Kitchenware"
}

struct Product: Identifiable {
    
    // MARK: Internal (properties)
    
    let id: UUID = UUID()
    
    let imageName: String
    
    let name: String
    
    let category: ProductCategory
    
    let description: String
    
    let datePurchased: Date
    
    let cost: NSNumber
}

extension Product {
    
    var purchaseDateCategory: String {
        return "\(self.datePurchased.dateMonth), \(self.category.rawValue)"
    }
    
    var costDisplay: String {
        
        let currencyFormatter: NumberFormatter = NumberFormatter()
        
        currencyFormatter.usesGroupingSeparator = true
        currencyFormatter.numberStyle = .currency
        currencyFormatter.locale = Locale.current

        let priceString: String = currencyFormatter.string(from: cost)!
        return priceString
    }
}

let sampleData: Array<Product> = [
    
    Product(imageName: "blue.disk", name: "Disk", category: .kitchen, description: "A really cool blue disk", datePurchased: Date(), cost: 159.99),
    Product(imageName: "candles", name: "Candles", category: .kitchen, description: "Really cool candles", datePurchased: Date(), cost: 30.00),
    Product(imageName: "drone", name: "Drone", category: .electronic, description: "A really cool drone", datePurchased: Date(), cost: 85.00),
    Product(imageName: "girl.green.barn.door", name: "Shirt and Dress", category: .clothing, description: "A really cool outfit", datePurchased: Date(), cost: 98.56),
    Product(imageName: "purple.cabbage.soup", name: "Cookware", category: .kitchen, description: "Really cool cookware", datePurchased: Date(), cost: 12.98),
    Product(imageName: "ring", name: "Ring", category: .clothing, description: "A really cool ring", datePurchased: Date(), cost: 9.99),
    Product(imageName: "watch", name: "Watch", category: .healthAndFitness, description: "A really cool watch", datePurchased: Date(), cost: 1555.99),
]

fileprivate extension Date {
    
    var dateMonth: String {
        
        let formatter: DateFormatter = DateFormatter()
        
        formatter.locale = Locale.current
        formatter.setLocalizedDateFormatFromTemplate("dd, MMM")
        
        let datetime = formatter.string(from: self)
        
        return datetime
    }
}
