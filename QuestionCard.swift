//
//  QuestionCard.swift
//  Qyestion Interface Demo V3
//
//  Created by Ahnaf Tahmid on 17/7/2026.
//


import SwiftUI

struct QuestionCard: View {
    let questionNumber: Int
    @Binding var individualQuestion: Question // To interact with questions back and forth
    let isExpanded: Bool // Expanding question card
    let onTap: () -> Void // Interaction without navigating or anything

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Button(action: onTap) {
                HStack {
                    Text("Q\(questionNumber) : \(individualQuestion.questionName)")
                        .font(.headline)
                        .foregroundColor(.primary)
                        .multilineTextAlignment(.leading)
                    Spacer()
                }
            }

            if isExpanded {
                ForEach(individualQuestion.listOfOptions) { option in
                    let isSelected = individualQuestion.selectedOptionIDs.contains(option.id)

                    Button {
                        select(option)
                    } label: {
                        HStack {
                            if isSelected {
                                Image(systemName: "circle.fill")
                                    .foregroundColor(Color("ButtonColor"))
                            } else {
                                Image(systemName: "circle")
                                    .foregroundColor(.button)
                            }
                            Text(option.optionName)
                                .foregroundColor(.primary)
                            Spacer()
                        }
                    }
                }
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding()
        .background(RoundedRectangle(cornerRadius: 12).fill(Color.white.opacity(0.7)))
        .overlay(RoundedRectangle(cornerRadius: 12).stroke(Color.gray.opacity(0.4), lineWidth: 1))
    }

    func select(_ option: Option) {     // For choosing multiple options for a question
        if individualQuestion.allowMultipleSelection {
            if individualQuestion.selectedOptionIDs.contains(option.id) {
                individualQuestion.selectedOptionIDs.remove(option.id)
            } else {
                individualQuestion.selectedOptionIDs.insert(option.id)
            }
        } else {
            individualQuestion.selectedOptionIDs = [option.id]
        }
    }
}
