//
//  Data Base.swift
//  6hw_2month_31.1.23
//
//  Created by Maksumova Sofia on 31/1/23.
//
//Создать структуру User c параметрами имя, фамилия, номер телефона. Создать enum из стран с кодами телефонов. Добавить параметр code в  структуру User. Создать класс DataBase с параметром массив юзеров и функций распечатки информации всех юзеров, функий распечатки только по определенной стране. В main cделать так, чтобы пользователь вводил все данные через ридлайн. Введенные данные должны записаться в массив в классе DataBase. Для телефона сделать 2 ридлайна, один для указывания страны по названию, другой для ввода номера. В общей информации номер телефона должен распечатываться в таком виде: “+996777777777”. Запрос для ввода данных сделать несколько раз циклом, чтобы можно было ввести разные данные.
import Foundation

 class Database {
    var users: [User]

    init(users: [User]) {
        self.users = users
    }
    
    func addUser(user: User){
        self.users.append(user)
    }

    func printAllUsers() {
        for user in users {
            //        return Имя: \(user.firstName).Номер: \(user.phoneNumber)
    print("Имя: \(user.firstName)")
    print("Фамилия: \(user.lastName)")
    print("Номер: \(user.code.rawValue)\(user.phoneNumber)")
    
        }
    }

    func printUsersByCountry(country: Country) {
        for user in users {
            if user.code == country {
        
    print("Имя: \(user.firstName)")
    print("Фамилия: \(user.lastName)")
    print("Номер: \(user.code.rawValue)\(user.phoneNumber)")
            }
        }
    }
}
