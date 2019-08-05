import Foundation

public protocol InvalidateTransaction {
    func invalidateTrantraction(transaction: Transaction)
}

public typealias TransactionHandler = ( (_ completed: Bool, _ confirmation: Date) -> Void )

public protocol Transaction {
    var value: Float { get }
    var name: String { get }
    var isValid: Bool { get set }
    var delegate: InvalidateTransaction? { get set }
    var date: Date { get }
    var handler: TransactionHandler? { get set }
    var completed: Bool { get }
    var confirmation: Date? { get set }
}

public extension Transaction {
    public mutating func invalidateTrantraction() {
        if completed {
            isValid = false
            delegate?.invalidateTrantraction(transaction: self)
        }
    }
}
