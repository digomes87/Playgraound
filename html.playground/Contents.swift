//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


class htmlElemet{

    let name: String
    let text:String?
    
    
    lazy var asHTML:Void ->String = {
        if let text = self.text {
            
            return "<\(self.name)>\(text)</\(self.name)>"
        }else{
        
            return "<\(self.name) />"
        }
    }
    
    init(name: String, text: String? = nil){
        self.name = name
        self.text = text
    }
    
    deinit {
        print("\(name) is being deinitialized")
    }
}