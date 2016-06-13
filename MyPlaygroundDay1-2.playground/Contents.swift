//: Playground - noun: a place where people can play

import UIKit

//var str = "Hello, playground"


class Shape{
    var sides: Int
    
    init(sides: Int){
        self.sides = sides
    }
    
    func calculateSize(weight:Int, height: Int)-> String{
        return "The wieght is \(weight)"
    }
}


class Square : Shape{
    var other = 0
    
     init(sides:Int,other:Int){
        super.init(sides:sides)
        self.other = other
    }
    
    func area()-> Int{
        return sides*sides
    }
    override func calculateSize(weight:Int,height:Int)-> String{
    return "In Square...!! "
    }
    
    var perimeter:Int{
        
        get{
            return 3 * other
        }
        set{
            
            other = newValue / 3
            
        }
    }
//    func something() -> Double{
//        return sides * sides
//    }
}

class Rectangle:Shape{
    
   override init(sides:Int){
    super.init(sides : sides)
    }
    override func calculateSize(weight: Int, height: Int) -> String {
            return "In Rectangle"
    }
}

var square=Square(sides : 5, other:4)

//print(square.area())
//
//print(square.calculateSize(10, height: 20))
//
//print(square.perimeter)
//
//square.perimeter = 8
//
//print(square.perimeter)
//
//print(square.other)



class RectangleAndShape{
    
    var rectangle: Rectangle {
        willSet{
            square.sides = newValue.sides
        }
    }
    var square: Square{
        willSet{
            rectangle.sides = newValue.sides
        }
    }
    init(sides:Int , sides2:Int){
        rectangle = Rectangle(sides:sides)
        square = Square(sides: sides2,other: 4)
    }
}


var rectangleandshape = RectangleAndShape(sides:10,sides2:20)

print(rectangleandshape.square.sides)
print(rectangleandshape.rectangle.sides)

rectangleandshape.square = Square(sides:12 , other:2)
//rectangleandshape.rectangle = Rectangle(sides:89)

print(rectangleandshape.square.sides)
print(rectangleandshape.rectangle.sides)




