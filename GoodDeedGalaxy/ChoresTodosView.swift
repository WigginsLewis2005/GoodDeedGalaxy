//
//  Todo.swift
//  NavigationLinks
//
//  Created by Linda A. Lewis on 4/16/24.
//

import Foundation

enum TodoStatus: String {
    case pending
    case completed
}

struct Todo: Identifiable, Hashable {
    let id: Int
    let title: String
}

func createDate(year: Int, month: Int, day: Int, hour: Int, minute: Int) -> Date {
    var components = DateComponents()
    components.year = year
    components.month = month
    components.day = day
    components.hour = hour
    components.minute = minute
    components.timeZone = TimeZone.current
    let calendar = Calendar.current
    return calendar.date(from: components)!
}

//sample data
let todos: [Todo] = [
    Todo(id: 1, title: "Wash Dishes"),
    Todo(id: 2, title: "Fold Clothes"),
    Todo(id: 3, title: "Vacuum"),
    Todo(id: 4, title: "Sweep"),
    Todo(id: 5, title: "Finish Homework"),
    Todo(id: 6, title: "Clean Room"),
    Todo(id: 7, title: "Wash Dishes"),
    Todo(id: 7, title: "Clean the Dog"),
    Todo(id: 7, title: "Take out Trash"),
    Todo(id: 7, title: "Brush Teeth"),
    Todo(id: 7, title: "Dust"),
]
