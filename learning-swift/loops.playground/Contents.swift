import UIKit

// For Loops

let numbers = 1...10
for number in numbers {
    print("Number is \(number)")
}

let albuns = ["Motorhead", "On Parole", "Orgasmatron"]
for album in albuns {
    print("Meus albuns preferidos são: \(album)")
}

print("Haters gonna:")
for _ in 1...5 {
    print("hate rs")
}

// While Loops

var number = 1
while number <= 4 {
    print(number)
    number += 1
}

// Repeat Loops

number = 1
repeat {
    print("Sou executado ao menos uma vez")
    number += 1
} while number <= 4

// Forçando Saída

var countDown = 10
while countDown >= 0 {
    print(countDown)
    
    if (countDown == 4) {
        print("Explodiu antes de chegar no zero kk")
        break
    }
    
    countDown -= 1
}

// Exiting multiple loops

for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print ("\(i) * \(j) is \(product)")
    }
}

// Criamos um label (outerLoop) para o loop mais externo
// e podemos usar o break junto ao label criado para
// forçar a parada
outerLoop: for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print ("\(i) * \(j) is \(product)")
        
        if (product == 50) {
            print("Na mosca!!!")
            break outerLoop
        }
    }
}

// Skipping items

for i in 1...10 {
    if i % 2 == 1 {
        continue
    }

    print(i)
}
