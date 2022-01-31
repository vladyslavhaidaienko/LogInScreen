//
//  User.swift
//  LogInScreen
//
//  Created by Vladyslav Haidaienko on 30.01.2022.
//

struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getUser() -> User {
        User(
            login: "User",
            password: "Password",
            person: Person(
                name: "Vladyslav",
                surname: "Haidaienko",
                info: "I will be a great iOS developer in the future"
            )
        )
    }
}

struct Person {
    let name: String
    let surname: String
    let info: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
}
