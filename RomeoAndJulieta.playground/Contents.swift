//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
var act1SceneCount = 0
var act2SceneCount = 0


let romeoAndJuliet = [ "Act 1 scene 1: Verona,A public place",
                       "Act 1 scena 2: Capulet's mansion",
                       "Act 1 scene 3: A room in Capulet's mansion",
                       "Act 1 scene 4: A street outside Capult's mansion",
                       "Act 1 scene 5: The Great Hall in Capulet's mansion",
                       "Act 2 scene 1: Outside Capulet's mansion",
                       "Act 2 scene 2: Capulet's orchard",
                       "Act 2 scene 3: Outside friar Lawrence's cell",
                       "Act 2 scene 4: A street in Verona",
                       "Act 2 scene 5: Capulet's mansion",
                       "Act 2 scene 6: Friar Lawrence's cell"
]



var act1Count = 0

for scene in romeoAndJuliet {
    
    if scene.hasPrefix("Act 1"){
        ++act1Count
    }
}

print("There are  \(act1Count)")


func sayHello(personName: String) -> String{

    let greeting = "Hello, What's going up" + personName + "!"
    return greeting
}



sayHello("Diego")
