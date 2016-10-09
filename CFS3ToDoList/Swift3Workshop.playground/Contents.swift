//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


// Constants and Variables

var myVariable = 42
myVariable = 50

let myConstant = 4

let myName = "Erica"


//Numeric Type

let minValue = UInt8.min
let maxValue = UInt8.max

let myFloat : Float = 1.234937
let mydouble : Double = 1.234937987231234


//String

let someString = "Some string literal value goes here."

var emptyString = ""
var anotherEmptyString = String()

let firstName = "Erica"
let lastName = "Winberry"

var fullName = String()

fullName = firstName + " " + lastName


//Tuple

let tuple = (description: "NotFound", code: 401)

tuple.description
tuple.code


//Set

let set: Set = [1,2,3,4]

let setB: Set = [1,9,8,4,2,8]

let result = set.intersection(setB)


//Array

let stringsArray = [String]()
let planetArray = ["Mars", "Jupiter"]
var intArray = [Int](repeating: 0, count: 5)

intArray.append(100)
intArray.append(10)
intArray.insert(1000, at: 0)

let removedValue = intArray.remove(at: 7)


//Dictionary

let dictionaryOne = [String: String]()
var dictionaryTwo = ["name": "Mars"]

dictionaryTwo["location"] = "Home"
dictionaryTwo["name"] = "Earth"


//For-In Loop

for index in 1...5 {
    print("/(index) times 5 is \(index * 5)")
}

for value in intArray{
    print(value)
}

for (key, value) in dictionaryTwo {
    print("\(key): \(value)")
}


//While Loop

var counter = 1

while counter <= 100 {
    //do some stuff
    counter += 1
}


//Repeat While

var repeatCount = 100

repeat {
    print("This will repeat at least once.")
} while repeatCount < 10


//If Statement

var temperatureInFahrenheit = 10
if temperatureInFahrenheit <= 32 {
    print("It's very cold. Consider wearing a scarf.")
} else if temperatureInFahrenheit == 0 {
    print("It's way too cold! Get inside!")
} else {
    print("It's not that cold. Wear a t-shirt.")
}

//writing it like above, the else if condition never gets met if the temp is less that 32.

var anotherTemp = 0
if anotherTemp == 0 {
    print("It's way too cold! Get inside!")
} else if anotherTemp <= 32 {
    print("It's very cold. Consider wearing a scarf.")
} else {
    print("It's not that cold. Wear a t-shirt.")
}


//Switch Statement

let someCharacter: Character = "!"
switch someCharacter {
case "a":
    print("The first letter of the alphabet")
case "z":
    print("The last letter of the alphabet")
default:
    print("Some other character")
}

let approximateCount = 12

let countDescription : String

switch approximateCount {
case 0:
    countDescription = "none"
case 1...5:
    countDescription = "a few"
case 5..<12:
    countDescription = "several"
case 12, 24, 36, 48:
    countDescription = "dozens of"
case 100..<1000:
    countDescription = "hundreds of"
default:
    countDescription = "unknown"
}

let somePoint = (x: 1, y: 1)

switch somePoint {
case (0, 0):
    print("(0, 0) is at the origin")
case (_, 0):
    print("(\(somePoint.x), 0 is on the x-axis")
case (0, _):
    print("(0, \(somePoint.y)) is on the y-axis")
case(-2...2, -2...2):
    print("(\(somePoint.x), \(somePoint.y)) is inside the box")
default:
    print("(\(somePoint.x), \(somePoint.y)) is outside of the box")
}


//Optionals

var surveyAnswer: String?

surveyAnswer = "This was so much fun!!!"

if surveyAnswer != nil{
    print(surveyAnswer)
}


//Coding Challenges

//1. Declare an array of strings containing all the names of the planets within our solar system. Create a for loop to iterate over each planet name. Inside the for loop, write an if statement that checks if the array contains a value for "Earth". If it does, print("YAY Earth!").

let planets = ["Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune"]

for planet in planets {
    if planet == "Earth" {
        print("YAY Earth!")
    }
}

//2. Declare a tuple that can hold 4 values. These values should be called x, y, width, and height. Then write a corresponding switch statement to handle different cases of this tuple.

let challengeTuple = (x: 3, y: 2, width: 12, height: 41)

switch challengeTuple {
case(2, let a, let b, let c):
    print("x is equal to 2")
case(let a, 1, let b, let c):
    print("y is equal to 1")
case(let a, let b, 13, let c):
    print("width is lucky 13!")
case(let a, let b, let c, 42):
    print("height is 42.")
default:
    print("No numbers matched.")
}

//3. Declare a Dictionary of type [Int: String]. Give it some default values. Then, remove a value for a specific key. Lastly, once the value has been removed, print the count of objects in the Dictionary to the console. This will take some research.

var challengeDict = [Int: String]()

challengeDict[1] = "first"
challengeDict[2] = "second"
challengeDict[3] = "third"
challengeDict[4] = "fourth"
challengeDict[5] = "fifth"

challengeDict[4] = nil

print("the challengeDict dictionary contains \(challengeDict.count) items.")
