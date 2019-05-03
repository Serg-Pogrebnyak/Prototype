import UIKit

class Person {
    let name: String
    var lastName: String
    var age: Int
    
    init(name: String, lastName: String, age: Int) {
        self.name = name
        self.lastName = lastName
        self.age = age
    }
    
    func clone() -> Person {
        return Person(name: self.name, lastName: self.lastName, age: self.age)
    }
}

let personVasia = Person(name: "Vasia", lastName: "Vasiliev", age: 21)

print("Vasia age - \(personVasia.age)")

var personVasiaBliznec = personVasia
personVasiaBliznec.age = 80
print("Vasia age - \(personVasia.age)")
print("Vasia bliznec age - \(personVasiaBliznec.age)")

personVasiaBliznec = personVasia.clone()

personVasiaBliznec.age = 27
print("Vasia age - \(personVasia.age)")
print("Vasia bliznec age - \(personVasiaBliznec.age)")
