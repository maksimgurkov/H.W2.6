//
//  User.swift
//  H.W2.6
//
//  Created by Максим Гурков on 16.02.2023.
//

import Foundation

struct User {
    let userName: String
    let userPassword: String
    let person: Person
    
    static func userOne() -> User {
        User(userName: "User", userPassword: "Password", person: Person(personName: "Maksim", personSurname: "Gurkov"))
    }
}

struct Person {
    let personName: String
    let personSurname: String
    
    var personFulName: String {
        "\(personName) \(personSurname)"
    }
    
}
