import UIKit

// Function
func printHelp() {
    let message = """
    Welcome to my app!

    Run this app inside a directory of images and
    MyApp will resize them all into thumbnails
    """
    
    print(message)
}

printHelp()

// Passing parameters to functions
func printSquare(number: Int) {
    print("Square of \(number) is \(number * number)")
}

printSquare(number: 4)

// Returning data from functions
func getSquare(number: Int) -> Int {
    return number * number
}

let square = getSquare(number: 4)
print("The result is \(square).")

//Parameter labels
func sayHello(to name: String) {
    print("Hello, \(name)")
}

sayHello(to: "Marllon Frizzo")

//Omitting parameter labels
func greet(_ person: String) {
    print("Hello, \(person)")
}

greet("Marllon Frizzo")

//Default parameters
func greet(_ person: String, nicely: Bool = true) {
    if nicely == true {
        print("Hello, \(person)")
    } else {
        print("Oh no!, it's \(person) again :(")
    }
}

greet("Marllon Frizzo")
greet("José Frizzo", nicely: false)

//Variadic functions
func square(numbers: Int...) {
    for number in numbers {
        print("\(number) squared is \(number * number).")
    }
}

square(numbers: 1, 2, 3, 4, 5)

//Writing throwing functions
enum PasswordError: Error {
    case obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if (password == "password") {
        throw PasswordError.obvious
    }
    
    return true
}

do {
    try checkPassword("password")
    print("That password is good!")
} catch {
    print("Deu ruim")
}

//inout parameters
func doubleInPlace(number: inout Int) {
    number *= 2
}

var myNumber = 2
print("Antes da chamada da função: \(myNumber).")
doubleInPlace(number: &myNumber)
print("Depois da chamada da função: \(myNumber).")

/*
1. Functions let us re-use code without repeating ourselves.
2. Functions can accept parameters – just tell Swift the type of each parameter.
3. Functions can return values, and again you just specify what type will be sent back. Use tuples if you want to return several things.
4. You can use different names for parameters externally and internally, or omit the external name entirely.
5. Parameters can have default values, which helps you write less code when specific values are common.
6. Variadic functions accept zero or more of a specific parameter, and Swift converts the input to an array.
7. Functions can throw errors, but you must call them using try and handle errors using catch.
8. You can use inout to change variables inside a function, but it’s usually better to return a new value.
*/
