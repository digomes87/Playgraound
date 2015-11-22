//: Playground - noun: a place where people can play

import UIKit

/*
    let's go again 
    
    Functions : In Swift you can declare functions like this
*/

func doSomeThingCoolHere() -> (){
    print(21)
}

doSomeThingCoolHere()

/*
FUNCTION: the sintaxe is func -> () in the empty tupla,which can be used interchangably with Void
*/

func myFunctionCool() -> Void {
    print("this function have Void")
}

myFunctionCool()

//Function can return one Value for exemple

func returnValueThisFunction()-> String{
    return "This function hava return inside and this function can return type of String only"
}

returnValueThisFunction()

// Function Or mutliple values by wrapping the return value of the fucntion in a tuple
//example

func thisFunctionReturnTwoThing() -> (String, String){
    return ("House","the think not series on tv")
}

/*
    functions: you can access the values by usinf tuple accessor syntax. The accessor names just continue incrementing 
    for however many values are in the tuple
*/

func thisFunctionReturnTwoThing2() ->(Int, Int){
    return (4,512)
}

let myCool = thisFunctionReturnTwoThing2()

//this number afoter contant myCool is the posicion
let mFirst = myCool.0
let mSecon = myCool.1

print(mFirst)
print(mSecon)

//Unwrapping Tuples
//Swift supports implicity unwrapping the value of tuples as well
func returnTwoCoolThings() -> (String, String){
    return("Musica","french")
}

let (liquor, liqueor) = returnTwoCoolThings()
print(liqueor)
print(liquor)

/*
    STRUCT
    Functions in structs: structures can contain function too
    Look
*/

struct Usuario {
    let firstname: String
    let secondName: String
    
    //now the function
    func fullName() -> String{
        //here in function us will put together firstname and secondName
        
        return firstname + " " + secondName
    }
    
    //Here another kynd of function but this resul is equal
    func fullName2()->String{
        //just for remmember in Forum of apple is recomendation is for you use this sintaxe
        return "\(firstname) \(secondName)"
    }
    
    //Look,only diffenrent between is the sintaxe for concantenation
    //in fist i use simbol plus +
    //in second the sintaxe recomendation for apple \()
}

let myUser = Usuario(firstname: "Diego", secondName: "Go")
let fullName = myUser.fullName()
let fullName2 = myUser.fullName2()

print(fullName)
print(fullName2)


/*Optional Value

    Swift has build in support for optional values. Optional are a safe way of expressiong that a value does not exist
    An optional is denoted by appending a ? to the end of the type here we created a constant optinal integer and assigned it to nil,which means it does not exist
*/

func WantUseThisFunctionForAllMyExamplesHere() -> (Int , Int){
    return (23,545)
}

let myletAnyway: Int? = nil

/*
    Optinal Values
    Here's another example. we have created a struct for representing a Person, who has a name, and might have a phone
    number too but it isn't required. it's optional
*/

struct Person {
    let name: String
    let phoneNumber: String? // here i put ? this want says this values is optinal
}

let myPersonWithPhone = Person(name: "John", phoneNumber: "5555-234234")
let myPersonWithoutPhone = Person(name: "Diego,is really I dont have Phone", phoneNumber: nil)

print(myPersonWithPhone)
print(myPersonWithoutPhone)

//in this case you can make a If look

func describePerson(person: Person){
    if let phoneNumber = person.phoneNumber{
        print("the \(person.name) don't have phone \(phoneNumber)")
    }else{
        print("the \(person.name) and number phone \(person.phoneNumber)")
    }
}

describePerson(myPersonWithPhone)
describePerson(myPersonWithoutPhone)

/*
    Enumerations
    Swift also has support for expressive enumerations If you are unfamiliar,enumerations or enums are a datatype
    used to describe a fixed range of possible values. If you were describing the type of a car such as a Sedan or SUV,these
    palues could be described using an enumm
*/

enum CarType{
    case Sedan
    case Sport
}

let myCarType = CarType.Sedan
let yourCarType = CarType.Sport

print(myCarType)
print(yourCarType)

// You can use pattern matching to conditionally run code based on the value of an enum

let myCarTwo = CarType.Sport
let yourCarTwo: CarType = .Sedan

func describeCarType(type: CarType){
    switch(type){
    case .Sedan:
            print("Car type of Sedan")
    case .Sport:
            print("Very well ")
        
    }
}

describeCarType(myCarTwo)

/*
    Pattern Matching
    Pattern matching can be used in other scenarios,too such such as the value of on Integer
    You can even test against a range of value using Swift literal range syntax
*/

func countNumber(number: Int){
    switch (number){
    case(0..<10):
        print("The number is less than 10")
    case 23:
        print("the number is a beatiful age of life")
    case 1993:
        print("the number is date")
    default:
        print("don't matter")
    }
}

countNumber(1993)


/*

Example of if when have more that two validates var a = 2
var b = 3
var c = 2

// your code here

//if a == b {
//    print("At two variables have the same value")
//}else if b == c {
//    print("At two variables have the same value")
//}else{
//    print("All the values are different")
//}
//
if (a == b) || (a == c) || (b == c)  {
print("At least two variables have the same value")
}else {
print("All the values are different")
}
*/
var a = 2
var b = 3
var c = 2

// your code here

//if a == b {
//    print("At two variables have the same value")
//}else if b == c {
//    print("At two variables have the same value")
//}else{
//    print("All the values are different")
//}
//

// you can validate before intires in if
if (a == b) || (a == c) || (b == c)  {
    print("At least two variables have the same value")
}else {
    print("All the values are different")
}

/*
    swift : type are inferred
            functions are first class objects
            collections are typed using generics
            simpler string manipulation
            switch statements do not require break statement
*/

//simple use of function

func hi(){
    print("hi")
}

hi()




