import Foundation

public class Gain: Transaction {
    public var confirmation: Date?
    public var date: Date
    public var delegate: InvalidateTransaction?
    public var value: Float
    public var name: String
    public var isValid: Bool = true
    public var handler: TransactionHandler?
    public var completed: Bool = false
    
    public init(value: Float, name: String, date: Date) {
        self.value = value
        self.name = name
        self.date = date
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            self.handler?(true, Date())
        }
    }
}
