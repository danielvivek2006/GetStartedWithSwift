//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// Arrays and dictionaries

var newArray=[1,2,3,4,5]

var myDict: [Int: String?] = [
    1: "Yo"
]

myDict[1]

var newDict=[
    //1:"daniel",
    2:"vivek",
    3:"alok",
]

//loops
for (key, value) in newDict{
    //print("\(key) : \(value)")
    
    //print(newDict[1])
    
    guard let _name = newDict[1] else {
        print("not found...")
        break
    }
    print(_name)
}

// Explicit type Spefication

let variable=3.14

let width="cms"

print(width + String(variable))

let emptyArray = [String]()
let emptyDict=[String:Float]()

// USe of Optional values
var str1 :String? = nil

print(str1 == nil)

//if loop

if let name=str1 {
    print("str1 has value " + name)
}
else{
    print("str1 is nil")
}

let fullname="world"

var actualname=" hi \(str1 ?? fullname)"

print(actualname)

//switch

switch fullname{
    case "world": print("In world case")
default: print("when swift is exhuastive")
}

//functions with return type
func greet(name:String , day:String)-> String{
    return "Hello \(name),today is \(day)."
}

print(greet("Bob",day:"Tuesday"))

// functions returns multiple values and can take variable number of arguements
func calculateResults(scores:[Int])-> (min:Int,max:Int,sum:Int){
    var min = scores[0]
    var max=scores[0]
    var sum=0
    
    for value in scores{
    if(value>max){
        max=value
    }
    if(value<min){
        min=value
    }
    sum+=value
    }
    return (min,max,sum)
}

let result = calculateResults([23,21,56,43,1,4,53,56,78])

// Different styles of printting data that is mixed with strings
print( "minimum value is" , result.min)
print("sum is " + String(result.sum))
print("maximum value is \(result.1)")


//Nested fuctions and fisrt-class type fucntions


func newFunction()->((Int)->(Int)){
    
    func addOne(scores:Int)-> Int {
        
        return scores+1
    }
    return addOne
}

var callFunc=newFunction() // This statement will return a addOne to callFunc

print(callFunc(10))

// Function can take another function as parameter

func hasAnyMatches(list:[Int],condition:(Int)->Bool)->Bool{
    for item in list{
        if condition(item){
            return true
        }
    }
    return false
}

func lessThanten(number:Int)->Bool{
     return number<10
}

var number = [20,4,15]

print(hasAnyMatches(number,condition:lessThanten))

//Defining closure

var res=number.map({                                //Returning value to res
    (number:Int)-> Int in

    if(number%2 == 1){
                return 0
        }
        return 1
})

print(res)     //[1,1,0]              returns an array

let mappednumbers=number.map({ number in 3*number})
print (mappednumbers)

// closure
let sortedNumbers = number.sort{ $1 > $0 }
print(sortedNumbers)









 
