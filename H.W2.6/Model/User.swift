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
        User(userName: "User", userPassword: "Password", person: Person(personName: "Максим", personSurname: "Гурков", phone: "8-926-051-80-03", telegram: "@maksimgurkov", email: "maksimgurkov.ru", companyName: "ООО Абада Груп", post: "Старший менеджер"))
    }
}

struct Person {
    let personName: String
    let personSurname: String
    let phone: String
    let telegram: String
    let email: String
    let companyName: String
    let post: String
    
    var personFulName: String {
        "\(personName) \(personSurname)"
    }
    
}
