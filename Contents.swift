//: Playground - noun: a place where people can play

import UIKit

var namesOfIntegers = [Int: String]()

namesOfIntegers[3] = "three"
namesOfIntegers[44] = "forty four"

namesOfIntegers = [:]

var airports: [String: String] = ["YYZ": "Toronto Pearson", "LAX": "Los Angeles International"]

print("The airports dictionary has: \(airports.count) items")
if airports.isEmpty {
    print("The airports dictionary is empty!")
}

airports["LHR"] = "London"

airports["LHR"] = "London Heathrow"

airports["DEV"] = "Devslopes International"

airports["DEV"] = nil

for (airportCode, airportName) in airports {
    print("\(airportCode): \(airportName)")
    
}

for key in airports.keys {
    print("Key: \(key)")
}



//optionals

var lotteryWinnings: Int?

lotteryWinnings = 10

if lotteryWinnings != nil {
    print(lotteryWinnings!)
}

if let winnings = lotteryWinnings {
    print(winnings)
}

class Car {
    var model: String?
}

var vehicle: Car?

//if let v = vehicle {
//    if let m = v.model {
//        print(m)
//    }
//}

vehicle = Car()
vehicle?.model = "Bronco"

if let v = vehicle, let m = v.model {
    print(m)
}

var cars: [Car]?

cars = [Car]()

if let carArr = cars , carArr.count > 0 {
    //only execute if not nil and more than 0 elements
    
} else {
    cars?.append(Car())
    print(cars?.count)
}


class Person {
    private var _age: Int!
    
    var age: Int {
        if _age == nil {
            _age = 15
        }
        
        return _age
    }
    
    func setAge(newAge: Int) {
        self._age = newAge
    }
}

class Dog {
    var species: String
    
    init(someSpecies: String) {
        self.species = someSpecies
    }
}

var lab = Dog(someSpecies: "Black Lab")
print(lab.species)



class MotorVehicle {
    var tires = 4
    var headlights = 2
    var horsepower = 468
    var model = ""
    func drive() {
        
    }
    func brake() {
        print("STOP!!!")
    }
}

let bmw = MotorVehicle()
bmw.model = "328i"

let ford = MotorVehicle()
ford.model = "F150"
ford.brake()


func someFunction(motorvehicle: MotorVehicle) {
    motorvehicle.model = "Cheese"
}

print(ford.model)

someFunction(motorvehicle: ford)

print(ford.model)













