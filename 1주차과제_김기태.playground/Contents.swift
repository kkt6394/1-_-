// START!!

protocol AbstractOperation {
    func operate(_ a: Int, _ b: Int) -> Int
}
class Calculator {                     // with는 파라미터 레이블, 함수를 호출할 때 사용!
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

}
class ReminderOperation: AbstractOperation {
    func operate(_ a: Int, _ b: Int) -> Int {
        return b != 0 ? a % b : 0
    }
}

let calc = Calculator() // Calculator라는 설계도를 통해 calc라는 실체를 만들어냄.(사용할 준비)
                        // 실체(객체, 인스턴스)가 힙(Heap)의 영역에 저장됨.
let addOp = AddOperation()
let subtractOp = SubtractOperation()
let multiplyOp = MultiplyOperation()
let divideOp = DivideOperation()
let reminderOp = ReminderOperation()

print(calc.calculate(10, 20, with: addOp)) // 파라미터 레이블 with를 통해 호출!
print(calc.calculate(10, 20, with: subtractOp))
print(calc.calculate(10, 20, with: multiplyOp))
print(calc.calculate(10, 20, with: divideOp))
print(calc.calculate(10, 20, with: reminderOp))

