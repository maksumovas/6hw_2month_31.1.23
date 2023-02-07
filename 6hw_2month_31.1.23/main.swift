


import Foundation

enum Country: String {
    case KG = "+996"
    case USA = "+1"
    case RF = "+7"
}

var database = Database(users: [])

var user1 = User(firstName: "Ali", lastName: "Alibekov", phoneNumber: "555550555", code: .KG)
var user2 = User(firstName: "Alexandr", lastName: "Alexandrov", phoneNumber: "666660666", code: .RF)
var user3 = User(firstName: "Alan", lastName: "Williams", phoneNumber: "777770777", code: .USA)

while true {
    print("Ведите имя:", terminator: " ")
    let firstName = readLine()!
    
    print("Ведите фамилию:", terminator: " ")
    let lastName = readLine()!
    
    print("Введите код страны:", terminator: " ")
    let countryName = readLine()!
    guard let country = Country(rawValue: "\(countryName)")
    else{
        continue
    }
    
    print("Введите номер телефона:", terminator: " ")
    let phoneNumber = readLine()!

    let user = User(firstName: firstName, lastName: lastName, phoneNumber: phoneNumber, code: country)
    database.users.append(user)

    database.addUser(user: user)
    
    print("Завершить? (y/n)")
    let answer = readLine()!
    if answer != "y" {
        break
    }
    
    print("Пользователи:")
    database.printAllUsers()

}

   

    
