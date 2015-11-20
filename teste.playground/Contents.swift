//: Playground - noun: a place where people can play

import UIKit

print("oi")
print("Let's Go More a Time", terminator: " ")


var myVar = 42
let value = "Value"
let n = 3.1415926
let convenience = "Keyword"

let weak = "Keyword"
let override = "another word"
let `class`  = "keyword"
let explicitDouble: Double = 78
let intValue = 0007
let largeIntValue = 77_000
let label = "some text" + String(myVar)
let pitText = "PI = \(n), PI 2 = \(n*2)"

#if false
    print("Not Printed")
    let buildValue = 3
#else
    let buildValue = 7

print("Build Value: \(buildValue)")

var someOptionalString: String? = "optional"
var someOptionalString2: Optional<String> = "optional"

if someOptionalString != nil {
    if someOptionalString!.hasPrefix("opt"){
        print("has the prefix")
    }
    
    let empty = someOptionalString?.isEmpty
}

someOptionalString = nil

var unwrappedString2: ImplicitlyUnwrappedOptional<String> = "Value is expected"

if let someOptionalConstant = someOptionalString{
    if !someOptionalConstant.hasPrefix("OK"){
        
    }
}

var anyObjectVar = "Changed value to a string, not good pratice, but possible"
var shoppingList = ["catfish","water","lemons"]

shoppingList[1] = "bottle of water"

let emptyArray = [String]()
let emptyArray2 = Array<String>()
var emptyMutableArray = [String]()
var explicitEmptyMutableStringArray:[String] = []


var occupations = [
    "Malcolm": "Captain",
    "Kaylee": "Mechanic"
]

occupations["Jayne"] = "Public Relations"
let emptyDictionary = [String: Float]()
let emptyDictionary2 = Dictionary<String, Float>()
var emptyMutableDictionary = [String: Float]()
var emplicityEmptyMutableDictionary: [String: Float]=[:]

let someNumber = Optional<Int>(7)
if let num = someNumber where num > 3{
    print("Num is greater than 3")
}

let myArray = [1,1,2,3,5]
for value in myArray{
    if value == 1 {
        print("One!")
    }else{
        print("Not One!")
    }
}

var dict = ["one":1, "two":2]
for (key,value)in dict{
    print("\(key): \(value)")
}

for i in -1...shoppingList.count{
    print(i)
}
shoppingList[1...2] = ["steak","peacons"]
var i = 1
while i < 100{
    i *= 2
}

repeat{
    print("hello")
}while 1 == 2

let vegetable = "red pepper"
switch vegetable {
    case "celery":
        let vegetableComment = "Add some raisins and make ants on a log"
    case "cucumber","watercress":
        let vegetableComment = "That would make a good tea sandwich"
    case let localScopeValue where localScopeValue.hasSuffix("pepper"):
        let vegetableComment = "Is it a spicy \(localScopeValue)?"
default:
        let vegetableComment = "Everything tastes good in soup"
}


func greet(name: String, day: String) -> String {
    return "Hello \(name), today is \(day)"
}

greet("Diego", day: "Friday")

func greet2(requiredName requiredName: String, externalParamName localParamName: String) -> String{
    return "Hi \(requiredName), the day is \(localParamName)"
}

greet2(requiredName: "Di", externalParamName: "Sunday")

// function that return multiple items in a tuple
func getGasPrices() -> (Double, Double, Double) {
    return (3.59, 3.69, 3.79)
}

let pricesTuple = getGasPrices()
let price = pricesTuple.2
//ignore tuple (or other) value by using _ (underscore)

let (_, price1, _) = pricesTuple
print(price1 == pricesTuple.1)
print("Gas price: \(price)")

func getGasPrices2() -> (lowestPrice: Double, highestPrice: Double, midPrice: Double){
    return(1.77, 37.70, 7.37)
}

let pricesTuples2 = getGasPrices2()
let price2 = pricesTuples2.lowestPrice
let (_, price3, _) = pricesTuples2
print(pricesTuples2.highestPrice == pricesTuples2.1) //true
print("Highest gas price: \(pricesTuples2.highestPrice)")

// guard statements
func testGuard(){
    //guards  provide early exits or breaks, placing the error handler code near the conditions
    //it places variables it declares in the same scope as the guard statement
    
    guard let aNumber = Optional<Int>(7) else {
        return
    }
    
    print("number is \(aNumber)")
}

testGuard()

// varidic Args
func setup(numbers: Int...){
    //its an Array
    let _ = numbers[0]
    let _ = numbers.count
}

//Passing and returning functions
func makeIncrementer() -> (Int -> Int){
    func addOne(number: Int) -> Int{
        return 1 + number
    }
    return addOne
}

var increment = makeIncrementer()
increment(7)

//pass ny ref

func swapTwoInts(inout a: Int, inout b: Int){
    let tempA = a
    a = b
    b = tempA
}

var someIntA = 7
var someIntB = 3

swapTwoInts(&someIntA, b: &someIntB)
print(someIntB) //6

var numbers = [1,2,6]

//functions are special case closures({})
//closure example
// -> separates the arguments and return type
// in separates the closure header from the closure body

numbers.map({
    (number: Int) -> Int in
    let result = 3  * number
    return result
})

// when the type is know, like above,we can do this
numbers = numbers.map({number in 3 * number })

//or oven this
//numbers = numbers.map({$0 * 4})

print(numbers)

//trailing closure
numbers = numbers.sort{$0 > $1}

print(numbers) //[10,14,36]

//structures and classes have very similar capabilities

struct NamesTable {
    let names: [String]
    
    //custom subscript
    
    subscript(index: Int) -> String {
        return names[index]
    }
}

//Structures have an auto-generated (implicit) designates initializer

let namesTable = NamesTable(names: ["Me","Them"])
let name = namesTable[1]
print("Name is \(name)")

//classes ,structures and its member have three levels of access control
//they are: internal (default) public private

public class Shape{
    public func getArea() -> Int {
        return 0
    }
}

// All methods and propeties of a class are public 
// If you just need to store data in a
// structured object, you should use a struct

internal class Rect: Shape {
    var sideLength: Int = 1
    
    //custom getter and setter property
    private var perimeter: Int{
    get {
        return 4 * sideLength
    }
    set{
        //newValue is an implicit variable available to setters
        sideLength =  newValue /  4
        }
    }
    
    // computed properties must be declared as var,you know cause they can change
    var smallestSideLength: Int{
        return self.sideLength - 1
    }
    
    //lazily load a property
    //subShape remains nil (uninitialized) until getter called
    lazy var subShape = Rect(sideLength: 4)
    
    //if you don't need a custom getter and setter
    // but still want to run code before and after getting or setting
    //a property you can use willset and didSet
    
    var identifier: String = "defaultID" {
        //the willSet arg will be the variable name for the new value
        willSet(someIdentifier){
            print(someIdentifier)
        }
    }
    
    init(sideLength: Int) {
        self.sideLength = sideLength
        // always super.init last when init custom properties
        super.init()
    }
    
    func shrink(){
        if sideLength > 0 {
            --sideLength
        }
    }
    
    override func getArea() -> Int {
        return sideLength * sideLength
    }
}

//a simple class  Square extends Rect

class Square: Rect {
    convenience init(){
        self.init(sideLength: 5)
    }
}

var mySquare = Square()
print(mySquare.getArea())
mySquare.shrink()
print(mySquare.sideLength)

//last instance

let aShape = mySquare as Shape

//compare instances, not the same as == which compares objests (equal to)
if mySquare === mySquare {
    print("Yep, it's mySuare")
}

//Optinal init
class Circle: Shape {
    var radius: Int
    override func getArea() -> Int {
        return 3 * radius * radius
    }
    
    //Place a questions mark postFix after init is an optinal init
    //which can return nil
    
    init?(radius: Int){
        self.radius = radius
        super.init()
        
        if radius <= 0 {
            return nil
        }
    }
}

var myCircle = Circle(radius: 1)
print(myCircle?.getArea())
print(myCircle!.getArea())

var myEmptyCircle = Circle(radius: -1)

print(myEmptyCircle?.getArea()) //nil
if let circle = myEmptyCircle {
    print("Circle is not nil")
}

// enum can optinally be of a specific type or on their own
// they can contain methods like classes

enum Suit {
    case Spades, Hearts, Diamonds, Clubs
    func getIcon() -> String{
        switch self {
        case .Spades: return "♤"
        case .Hearts: return "♡"
        case .Diamonds: return "♢"
        case .Clubs: return "♧"
        }
    }
}

//Enum values allow short hand syntax no need to type the enum type
// when the variable is explicitly declared

var suitValue: Suit = .Hearts
// String enums can have direct raw value assignments
//or their raw values will be derives from the the Enum field

    enum BookName: String {
        case Diego
        case Di = "Di"
}

print("Name: \(BookName.Diego.rawValue)")

//enum with associated Value

    enum Furniture {
        //Associate With Int
        case Desk(height: Int)
        //asscociate with String and Int
        case Chair(String, Int)
        
        func description() -> String{
            switch self {
            case .Desk(let height):
                return "Desk with \(height) cm"
            case .Chair(let brand, let height):
                return "Chair of \(brand) with \(height) cm"
                
            }
        }
}

var desk: Furniture = .Desk(height: 80)
print(desk.description())
var chair = Furniture.Chair("Foo", 40)
print(chair.description())

//protocol can require that conforming types have specific
// instance properties instance methods type methods
// operators and subscripts

    protocol ShapeGenerator {
        var enable: Bool {get set}
        func buildShape() -> Shape
}

// protocols declared with @objc allow optinal functions
//which allow you to check for conformance

    @objc protocol TransformShape{
        optional func reshape()
        optional func canReshape() -> Bool
}

    class MyShape: Rect {
        var delegate: TransformShape?
        
        func grow(){
            sideLength += 2
            //place a question mark after an optional property method or
            // subscript to gracefully ignore a nil value and return nil
            //instead of thowing a runtime error (optional chaining)
            
            if let reshape = self.delegate?.canReshape?() where reshape{
                //teste for delegate the for method
                self.delegate?.reshape?()
            }
        }
}

// square now conforms to the printable protocol

    extension Square: CustomStringConvertible{
        var description: String {
            return "Area: \(self.getArea()) - ID: \(self.identifier)"
        }
}

print("Square: \(mySquare)")

    extension Int {
        var customProperty: String {
            return "This is \(self)"
        }
        
        func multiplyBy(num: Int) -> Int {
            return num * self
        }
}

print(7.customProperty)
print(14.multiplyBy(3))

// Generics: Similar to Java and C#. Use the where keyword to specify the
// requirements of the generics

    func findIndex<T: Equatable>(Array: [T], _ valueToFind: T) -> Int? {
        for(index, value) in Array.enumerate(){
            if value == valueToFind{
                return index
            }
        }
        return nil
}

let foundAtIndex = findIndex([1,2,3,4], 3)
print(foundAtIndex == 2)

    prefix operator !!! {}

    prefix func !!! (inout shape: Square) -> Square {
        shape.sideLength *= 3
        return shape
}

//current value
print(mySquare.sideLength)

!!!mySquare
print(mySquare.sideLength)

//operators can also be generics

    infix operator <->{
    func<->< T: Equatable>(inout a: T, inout b: T){
        let c = a
        a = b
        b = c
    }

var foo: Float = 10
var bar: Float = 20

    foo <-> bar
print("Foo is \(foo), bar is \(bar)")
}
