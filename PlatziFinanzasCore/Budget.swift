import Foundation

public class Budget {
    public var category: DebitCategories
    public var budget: Float
    public var name: String
    
    public init(category: DebitCategories, budget: Float, name: String) {
        self.category = category
        self.budget = budget
        self.name = name
    }
}
