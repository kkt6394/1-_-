// START!!

class Calculator {
    func add(_ a: Int, _ b: Int) -> Int {
        return AddOperation().add(a, b)
    }
    func subtract(_ a: Int, _ b: Int) -> Int {
        return SubtractOperation().subtract(a, b)
    }
    func multiply(_ a: Int, _ b: Int) -> Int {
        return MultiplyOperation().multiply(a, b)
    }
    func divide(_ a: Int, _ b: Int) -> Int {
        return DivideOperation().divide(a, b)
    }
    func reminder(_ a: Int, _ b: Int) -> Int {
        return ReminderOperation().reminder(a, b)
    }
}

class AddOperation {
    func add(_ a: Int, _ b: Int) -> Int {
        return a + b
    }
}
class SubtractOperation {
    func subtract(_ a: Int, _ b: Int) -> Int {
        return a - b
    }
}
class MultiplyOperation {
    func multiply(_ a: Int, _ b: Int) -> Int {
        return a * b
    }
}
class DivideOperation {
    func divide(_ a: Int, _ b: Int) -> Int {
        return b != 0 ? a / b : 0
    }
<<<<<<< HEAD
=======
}
class ReminderOperation {
>>>>>>> level3
    func reminder(_ a: Int, _ b: Int) -> Int {
        return b != 0 ? a % b : 0
    }
}

