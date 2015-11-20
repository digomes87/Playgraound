//: Playground - noun: a place where people can play

import UIKit

class MyPG{

    let title:String
    let age: Int
    var price:Double = 0.0
    
    init(title:String,age:Int,price:Double){
        self.title = title
        self.age = age
        self.price = price
    }
    
    func discountedPrice(percentage:Double){
        price = price - (price * percentage / 100)
    }
}

let quadcopter = MyPG(title: "Quadcopter", price: 500.00)
quadcopter.discountedPrice(10)

println("hi")