//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
print(str)

extension String{
    var banana : String{
        
        let shortName = String(characters.dropFirst(1))
        return "\(self) \(self) Bo B\(shortName) banan fana Fo F\(shortName)"
    
    }
}

let bananaName = "Diego".banana