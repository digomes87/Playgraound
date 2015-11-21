//: Playground - noun: a place where people can play

import UIKit

//use of Fucntion you an delcare Functions like this
func doSomethingCool() -> () {
    print(42)
}

//Fucntion
/*
    The syntax is: func -> () is the empty tuple,which can be used interchangably
with Void
*/

func doSomethingElseCool() -> Void {
    print("Don't Panic")
}


// Another example

func MyFunction() -> Void {
    print("My function here")
}

// Another type of return in a Function

func returnSOmeThingCool() -> String{
    return "Teenage Mutant Ninja Turtles"
}

func returnTwoStrings() -> (String, String) {
    return ("Twitter", "@Nylondev")
}


/*
    Function In structs
*/

struct Usuario {
    let firstName: String
    let lastName: String
    
    func fullName() -> String {
        return firstName + " " + lastName
    }
    
    func fullNameConcatenation() -> String {
        return "\(firstName) \(lastName)"
    }
}

let myUsuario = Usuario(firstName: "Diego", lastName: "Go")
let fullName = myUsuario.fullName()

let myUsarioConca = Usuario(firstName: "Twitter:", lastName: "@Nylondev")
let fullNameConcatenation = myUsarioConca


/*
Optional Values
Swift has built in support for optional values. Options are a safe way of expressing that a value does not exist. An optional is denoted by appending a ? to the end of the type Here we created a constant optional integer and assigned it to nil, which means it does not exist.

    example:
        let myOptionalInteger:Int? = nil
*/


struct Person {
    let name: String
    let phoneNum: String?
}

// here my number Diego Go has 55554444

let myPersonNumber = Person(name: "Diego", phoneNum: "89898923")

//another person
let myNearbady = Person(name: "Brain", phoneNum: nil)
/* look here! myNearbady has create with name Brain but dont have phoneNum,because there in Struct Person
    The let phoneNum have a String optinal  -> let phoneNum: String?
*/

print(myPersonNumber)
print(myNearbady)
print(fullNameConcatenation)
print(fullName)
returnTwoStrings()
doSomethingElseCool()
doSomethingCool()
MyFunction()
print(returnSOmeThingCool())



/*
Enumerations
Swift also has support for expressive enumerations. If you're unfamiliar, enumerations (or enums) are a dataype used to describe a fixed range of possible values. If you were describing the type of a car, such as a Sedan or SUV, these palues could be described using an enum.
*/

enum CarType {
    case Sedan
    case Sport
}

let myCarType = CarType.Sedan
let mySecondCarType:  CarType = .Sport

func describeCars(type: CarType){
    switch(type){
    case .Sedan:
        print("car is a Sedan")
    case .Sport:
        print("TH")
    }
}



