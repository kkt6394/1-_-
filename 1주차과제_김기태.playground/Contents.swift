// START!!

protocol AbstractOperation {
    func operate(_ a: Int, _ b: Int) -> Int
}
class Calculator {
    func calculate(_ a: Int, _ b: Int, with operation: AbstractOperation) -> Int {
        return operation.operate(a, b)
    }
}

class AddOperation: AbstractOperation {
    func operate(_ a: Int, _ b: Int) -> Int {
        return a + b
    }
}
class SubtractOperation: AbstractOperation {
    func operate(_ a: Int, _ b: Int) -> Int {
        return a - b
    }
}
class MultiplyOperation: AbstractOperation {
    func operate(_ a: Int, _ b: Int) -> Int {
        return a * b
    }
}
class DivideOperation: AbstractOperation {
    func operate(_ a: Int, _ b: Int) -> Int {
        return b != 0 ? a / b : 0
    }
<<<<<<< HEAD
=======
}
class ReminderOperation: AbstractOperation {
    func operate(_ a: Int, _ b: Int) -> Int {
        return b != 0 ? a % b : 0
    }
}

let calculator = Calculator()

let addOp = AddOperation()
let subtractOp = SubtractOperation()
let multiplyOp = MultiplyOperation()
let divideOp = DivideOperation()
let reminderOp = ReminderOperation()

print(calculator.calculate(10, 20, with: addOp)) 
print(calculator.calculate(10, 20, with: subtractOp)) 
print(calculator.calculate(10, 20, with: multiplyOp)) 
print(calculator.calculate(10, 20, with: divideOp))
print(calculator.calculate(10, 20, with: reminderOp))

