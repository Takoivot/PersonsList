//
//  Persons.swift
//  PersonsList
//
//  Created by Артур Сахбиев on 05.05.2022.
//

struct Person {
    let name: String
    let surname: String
    let phoneNumber: String
    let email: String
    
    
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPersons() -> [Person] {
        
        var persons: [Person] = []
        
        let names = Data.shared.names.shuffled()
        let surnames = Data.shared.surnames.shuffled()
        let phoneNumbers = Data.shared.phoneNumbers.shuffled()
        let emails = Data.shared.emails.shuffled()
        
        let indexEnd = min(names.count, surnames.count, phoneNumbers.count, emails.count)
        
        for index in 1..<indexEnd {
            let person = Person(name: names[index],
                                surname: surnames[index],
                                phoneNumber: phoneNumbers[index],
                                email: emails[index]
            )
            persons.append(person)
        }
        return persons
       
    }
}

enum Contacts: String {
    case phone = "phone"
    case email = "paperplane"
}
