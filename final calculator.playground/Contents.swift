//level 1, 2
//class Calculator{
//    let firstNumber : Double
//    let secondNumber : Double
//
//    init(_ firstNumber: Double, _ secondNumber: Double) {
//        self.firstNumber = firstNumber
//        self.secondNumber = secondNumber
//    }
//
//    func calculate(_ operatorchar:String) -> Double {
//
//        switch operatorchar{
//                    case "+":
//                        return add()
//                    case "-":
//                        return min()
//                    case "*":
//                        return mul()
//                    case "/":
//                        return div()
//                case "%":
//                        return rem()
//                    default:
//            return 0
//        }
//    }
//    func add() -> Double {
//        return firstNumber + secondNumber
//    }
//    func min() -> Double {
//        return firstNumber - secondNumber
//    }
//    func mul() -> Double {
//        return firstNumber * secondNumber
//    }
//    func div() -> Double {
//        if secondNumber != 0 {
//            return firstNumber / secondNumber
//        } else {
//            return 0
//        }
//    }
//    func rem() -> Double {
//        if secondNumber == 0 {
//            return 0
//        } else {
//            return firstNumber .truncatingRemainder(dividingBy: secondNumber)
//        }
//    }
//}
//let calculator = Calculator(4, 2)
//let result = calculator.calculate("/")
//
//let addResult = calculator.add()
//let subtractResult = calculator.min()
//let multiplyResult = calculator.mul()
//let divideResult = calculator.div()
//let remainderResult = calculator.rem()
//
//print("addResult : \(addResult)")
//print("subtractResult : \(subtractResult)")
//print("multiplyResult : \(multiplyResult)")
//print("divideResult : \(divideResult)")
//print("remainderResult : \(remainderResult)")



//Level 3
//class Calculator {
//    var firstNumber : Double
//    var secondNumber : Double
//
//    init(_ firstNumber: Double, _ secondNumber: Double) {
//        self.firstNumber = firstNumber
//        self.secondNumber = secondNumber
//    }
//    func calculate(_ operatorchar : String) -> Double{
//        switch operatorchar{
//        case "+":
//            let addOperation = AddOperation()
//            return addOperation.add(self.firstNumber, self.secondNumber)
//        case "-":
//            let subtractOperation = SubtractOperation()
//            return subtractOperation.min(self.firstNumber, self.secondNumber)
//            // 덧셈 뺄셈은 let으로 보기 쉽게 바꿔주었음
//        case "*":
//            let multiplyOperation = MultiplyOperation()
//            return multiplyOperation.mul(self.firstNumber, self.secondNumber)
//        case "/":
//            let divideOperation = DivideOperation()
//            return divideOperation.div(self.firstNumber, self.secondNumber)
//        default:
//            return 0
//        }
//    }
//}
//class AddOperation{
//    func add(_ firstNumber: Double, _ secondNumber: Double ) -> Double {
//            return firstNumber + secondNumber
//        }
//    }
//class SubtractOperation{
//        func min(_ firstNumber: Double, _ secondNumber: Double) -> Double {
//            return firstNumber - secondNumber
//        }
//    }
//    class MultiplyOperation{
//
//        func mul(_ firstNumber: Double, _ secondNumber: Double) -> Double {
//            return firstNumber * secondNumber
//    }
//}
//    class DivideOperation{
//        func div(_ firstNumber: Double, _ secondNumber: Double) -> Double {
//        if secondNumber != 0 {
//            return firstNumber / secondNumber
//        } else {
//            print("분모가 0이므로 나눌 수 없습니다")
//            return 0
//        }
//    }
//}
//    let calculator = Calculator(4, 0)
//    let result = calculator.calculate("+")
//
//
//    let addResult = calculator.calculate("+")
//    let subtractResult = calculator.calculate("-")
//    let multiplyResult = calculator.calculate("*")
//    let divideResult = calculator.calculate("/")
//
//    print("addResult : \(addResult)")
//    print("subtractResult : \(subtractResult)")
//    print("multiplyResult : \(multiplyResult)")
//    print("divideResult : \(divideResult)")


////level 4

class AbstractOperation {
    func calculate(_ operationchar : String) -> Double{
        switch operationchar{
        case "+":
            let addOperation = AddOperation()
            return addOperation.add()
        case "-":
            let subtractOperation = SubtractOperation()
            return subtractOperation.min(self.firstNumber, self.secondNumber)
            // 덧셈 뺄셈은 let으로 보기 쉽게 바꿔주었음
        case "*":
            let multiplyOperation = MultiplyOperation()
            return multiplyOperation.mul(self.firstNumber, self.secondNumber)
        case "/":
            let divideOperation = DivideOperation()
            return divideOperation.div(self.firstNumber, self.secondNumber)
        default:
            return 0
        }
    }
}

class Calculator {
var firstNumber : Double
var secondNumber : Double
var operationchar : String

    init(_ firstNumber: Double, _ secondNumber: Double, operationchar: String) {
    self.firstNumber = firstNumber
    self.secondNumber = secondNumber
    self.operationchar = operationchar
}
}

class AddOperation: AbstractOperation{
    override
    func add(_ firstNumber: Double, _ secondNumber: Double ) -> Double {
        return firstNumber + secondNumber
    }
}
class SubtractOperation{
    func min(_ firstNumber: Double, _ secondNumber: Double) -> Double {
        return firstNumber - secondNumber
    }
}
class MultiplyOperation{

    func mul(_ firstNumber: Double, _ secondNumber: Double) -> Double {
        return firstNumber * secondNumber
}
}
class DivideOperation{
    func div(_ firstNumber: Double, _ secondNumber: Double) -> Double {
    if secondNumber != 0 {
        return firstNumber / secondNumber
    } else {
        print("분모가 0이므로 나눌 수 없습니다")
        return 0
    }
}
}
let calculator = Calculator(4, 0)
let result = calculator.calculate("/")


let addResult = calculator.calculate("+")
let subtractResult = calculator.calculate("-")
let multiplyResult = calculator.calculate("*")
let divideResult = calculator.calculate("/")

print("addResult : \(addResult)")
print("subtractResult : \(subtractResult)")
print("multiplyResult : \(multiplyResult)")
print("divideResult : \(divideResult)")
