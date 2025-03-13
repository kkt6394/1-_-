// START!!

class Calculator {
    func add(_ a: Int, _ b: Int) -> Int {
        return a + b
    }
    func subtract(_ a: Int, _ b: Int) -> Int {
        return a - b
    }
    func multiply(_ a: Int, _ b: Int) -> Int {
        return a * b
    }
    func divide(_ a: Int, _ b: Int) -> Int {
        return a / b
    }
}
let calculator = Calculator()
print(calculator.add(10, 20))
print(calculator.subtract(10, 20))
print(calculator.multiply(10, 20))
print(calculator.divide(10, 20))

