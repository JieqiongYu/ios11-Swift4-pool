//: Playground - noun: a place where people can play

import UIKit

var message = "Hello, playground"

// 001 - Variables
// Operators
// Unary, Binary, Ternary

// Unary: !
var amICool = true
amICool = !amICool

// Ternary: ? :
var feelGoodAboutMyself = true
feelGoodAboutMyself = amICool ? true: false

var bankAccountBalanceInVariable = 100
var cashRegisterMessage = bankAccountBalanceInVariable >= 150 ? "You just bought the item" : "You are broke as a joke"

// 002 - String
var str: String = "Hello, playground"
var firstName = "Jack"
var lastName = "Bauer"

var ageInString = 45
var fullName = firstName + " " + lastName
var fullName2 = "\(firstName) \(lastName) is \(ageInString)"

fullName.append(" III")

// capitalized
var bookTitle = "revenege of crab cakes"
bookTitle = bookTitle.capitalized

// lowercased()
var chatroomAnoiyingCapsGuy = "PLEASE HELP ME NOW! HERE IS MY 100 LINES OF CODE"
var lowercaseChat = chatroomAnoiyingCapsGuy.lowercased()

// replaceingOccurences
var sentence = "What the fetch?! Heck that is crazy"

if sentence.contains("fetch") || sentence.contains("Heck") {
    sentence.replacingOccurrences(of: "fetch", with: "tuna")
    sentence.replacingOccurrences(of: "Heck", with: "Playa")
}

// 003 - Numbers
// Type inference
var age = 30
// Explicitly declared type
var weight: Int = 200 // Int
// Double
var milesRun = 56.45

// Arithmetic Operators
// + - / *

// 004 - Function
func calculateArea(length: Int, width: Int) -> Int {
    let area = length * width;
    return area;
}

let newArea = calculateArea(length: 5, width: 4)

var bankAccountBalance = 500.00
var sigourneyWeaverAlienStomperShoes = 350.00

// keyword: inout
func purchaseItem(currentBalance: inout Double, itemPrice: Double) {
    if itemPrice <= currentBalance {
        currentBalance = currentBalance - itemPrice
        print("Purchased item for: $\(itemPrice)")
    } else {
        print("You are broke. You should learn how to save moeny.")
    }
}

purchaseItem(currentBalance: &bankAccountBalance, itemPrice: sigourneyWeaverAlienStomperShoes)
bankAccountBalance

var retroLunchBox = 40.00
purchaseItem(currentBalance: &bankAccountBalance, itemPrice: retroLunchBox)
bankAccountBalance

// 005 - Boolean
var amITheBestTeacherEver: Bool = true
amITheBestTeacherEver = false

// 006 - Logical Operators
// Logical NOT operator - unary prefix operator
let allowedEntry = false

if !allowedEntry {
    print("ACCESS DENIED")
}

// 007 - Array
var employeeSalaries: [Double] = [45000.0, 54000.0, 100000.0, 20000.0]
// Add one employee
employeeSalaries.append(39000.34)
// Fire the second employee
employeeSalaries.remove(at: 1)

// 008 - Loop
var salaries: [Double] = [45000.0, 54000.0, 100000.0, 20000.0]
var x = 0
repeat {
    salaries[x] = salaries[x] + salaries[x] * 0.10
    x += 1
} while (x < salaries.count)

for i in 0..<salaries.count {
    salaries[i] = salaries[i] + salaries[i] * 0.10
}

for i in 1...5 {
    print("Index: \(i)")
}

for salary in salaries {
    print("Salary: \(salary)")
}

// 009 - Dictionary
// Hash Table
var namesOfIntegers = [Int: String]()
namesOfIntegers[3] = "three"
namesOfIntegers[44] = "forty four"

namesOfIntegers = [:]

if (namesOfIntegers.isEmpty) {
    print("The namesOfIntegers dictionary is empty!")
}

var airports = ["YYZ": "Toronto Pearson", "LAX": "Los Angeles International"]
print("The airports dictionary has: \(airports.count) items")

airports["LHR"] = "London"
airports["LHR"] = "London Heathrow"
airports["DEV"] = "Developes International"

airports["DEV"] = nil

for (airportCode, airportName) in airports {
    print("\(airportCode): \(airportName)")
}

for key in airports.keys {
    print("Key: \(key)")
}

for val in airports.values {
    print("Value: \(val)")
}

// 010 - Objects and Classes
class VehicleO {
    var tires = 4
    var headlights = 2
    var horsepower = 468
    var model = ""
    
    func drive() {
        // accelerate the vehicle
    }
    
    func brake() {
    }
}

let bmw = VehicleO()
bmw.model = "328i"

let ford = VehicleO()
ford.model = "F150"
ford.brake()

func passByRference(vehicle: VehicleO) {
    vehicle.model = "Cheese"
}

print(ford.model)
passByRference(vehicle: ford) // Pass by reference
print(ford.model)

// 011 - Inheritence & OOP in Swift
class  Vehicle {
    var tires = 4
    var make: String?
    var model: String?
    var currentSpeed: Double = 0
    
    init() {
        print("I am the parent")
    }
    
    func drive(speedIncrease: Double) {
        currentSpeed += speedIncrease * 2
    }
    
    func brake() {
        
    }
}

class SportsCar: Vehicle {
    
    override init() {
        super.init()
        print("I am the child")
        make = "BMW"
        model = "3 series"
    }
    
    override func drive(speedIncrease: Double) {
        currentSpeed += speedIncrease * 3
    }
}

let car = SportsCar()

// 012 - Polymorphism & OOP in Swift
class Shape {
    var area: Double?
    
    func calculateArea(valA: Double, valB: Double) {
        
    }
}

class Triangle: Shape {
    override func calculateArea(valA: Double, valB: Double) {
        area = (valA * valB) / 2;
    }
}

class Rectangle :Shape {
    override func calculateArea(valA: Double, valB: Double) {
        area = valA * valB
    }
}

// 013 - Optionals
var optionalNumber: Int? = 5
var number: Int = 5

// Force Unwrapping
if optionalNumber != nil {
    print("optionalNUmber has a value of \(optionalNumber!)")
} else {
    // handle errors
}

// Optinal Binding
if let constantNumber = optionalNumber {
    print("constantNumber has a value of \(constantNumber)")
} else {
    print("optional number is nil.")
}
// Optional Binding with keyword guard let
func intPrinter() {
    guard let constantNumber = optionalNumber else {
        return
    }
    print("constantNumber has a value of \(constantNumber)")
}
intPrinter()

// Implicitly Unwrapped Optionals: Avoid using this
let assumedValue: Int! = 5
let implicitValue: Int = assumedValue

// Nil Coalescing & Using Ternary Operator
let optionalInt: Int? = 5
let result = optionalInt ?? 0;

// Real life example
class ComicConAttendee {
    var admissionBadge: AdmissionBadge?
    
    init(badge: AdmissionBadge?) {
        self.admissionBadge = badge
    }
}

class AdmissionBadge {
    var numberOfDays: Int
    
    init(numberOfDays: Int) {
        self.numberOfDays = numberOfDays
    }
}

let admissionBadge = AdmissionBadge(numberOfDays: 3)
let atendee = ComicConAttendee(badge: admissionBadge)
//let atendee = ComicConAttendee(badge:nil)

if let daysAttendable = atendee.admissionBadge?.numberOfDays {
    print("This attendee can enter Comic Con for \(daysAttendable) days.")
} else {
    print("This person has not yet purchsed a ticket. Please refer them to the ticketing window.")
}

// 014 - Enumeration
enum NameOfEnum {
    case caseOne
    case caseTwo
    case caseThree
}

let enumeration: NameOfEnum = .caseTwo

enum Barcode {
    case upc(Int, Int, Int, Int)
    case qrCode(String)
}

//var productBarcode = Barcode.upc(8, 85909, 51226, 3)
var productBarcode = Barcode.qrCode("qrcodeqrcodeqrcode")

switch productBarcode {
    case let .upc(numberSystem, manufacturer, productCode, check):
        print("UPC \(numberSystem), \(manufacturer), \(productCode), \(check)")
    case let .qrCode(productCode):
        print("QR CODE: \(productCode)")
}

enum JediMaster:String {
    case yoda = "Yoda"
    case maceWindu = "Mace Windu"
    case quiGonJinn = "Qui=Gon Jinn"
    case obiWankenobi = "Obi-Wan Kenobi"
    case lukeSkywalker = "Luke Skywalker"
}

print(JediMaster.yoda.rawValue)

enum SwitchStatus {
    case On
    case Off
}

var switchStatus: SwitchStatus = .On

func flipSwitch(status: SwitchStatus) -> SwitchStatus {
    if status == .Off {
        return .On
    } else {
        return .Off
    }
}

flipSwitch(status: switchStatus)

// 015 - Extensions
class MyClass {
    
}

extension MyClass {
    // Functionality
}

extension String {
    func reversed() -> String {
        var characterArray = [Character]()
        for character in self {
            characterArray.insert(character, at: 0)
        }
        return String(characterArray)
    }
}

var name = "Jieqiong Yu"
name.reversed()

extension Int {
    func square() -> Int{
        return self * self
    }
}

var value = 9
value.square()

// Make self mutable, using keyword mutating
extension Double {
    mutating func area() {
        let pi = 3.1415
        self = pi * (self * self)
    }
}

class Circle {
    var radius: Double
    
    init(radius: Double) {
        self.radius = radius
    }
}

var circle = Circle(radius: 3.3)
print(circle.radius)
circle.radius.area()
print(circle.radius)












