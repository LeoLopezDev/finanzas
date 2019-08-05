import Foundation

public protocol TransactionDebit: Transaction {
    var category: DebitCategories { get }
}

public enum DebitCategories: Int {
    case health
    case food, rent, tax, transportation
    case entertainment = 10
}

public class Debit: TransactionDebit {
    public var confirmation: Date?
    public var date: Date
    public var delegate: InvalidateTransaction?
    public var value: Float
    public var name: String
    public var category: DebitCategories
    public var isValid: Bool = true
    public var handler: TransactionHandler?
    public var completed: Bool = false
    
    public init(value: Float, name: String, category: DebitCategories, date: Date) {
        self.category = category
        self.value = value
        self.name = name
        self.date = date
        
        DispatchQueue.main.asyncAfter(deadline: .now()) {
            self.handler?(true, Date())
        }
    }
}
