import Foundation

class AppData {
    static let nameArray = ["Tom", "Alice", "Alina", "James", "Vladimir"]
    static let surnameArray = ["Jonhson", "Mirror", "Oulan", "Nemiron", "Zandeyus"]
    static let phoneNumArray = ["5763322", "7871259", "8887721", "9812276", "7689010"]
    static let emailArray = ["lins@gmail.com", "sin@gmail.com", "omm@gmail.com", "sunset@gmail.com", "ilun@gmail.com"]
    
    static var person = [Person(name: "", surname: "", phone: "", email: "")]
    
    static func createPerson() -> Person {
        return Person(name: nameArray.randomElement() ?? "",
                      surname: surnameArray.randomElement() ?? "",
                      phone: phoneNumArray.randomElement() ?? "",
                      email: emailArray.randomElement() ?? "")
    }
}
