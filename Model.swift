//
//  Model.swift
//  Qyestion Interface Demo V3
//
//  Created by Ahnaf Tahmid on 17/7/2026.
//


import Foundation

struct Option: Identifiable {
    var id = UUID()
    var optionName: String
    var weight: Int
}

struct Question: Identifiable {
    var id = UUID()
    var questionName: String
    var listOfOptions: [Option]
    var allowMultipleSelection: Bool
    var selectedOptionIDs: Set<UUID> = []
}
