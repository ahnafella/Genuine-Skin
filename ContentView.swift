//
//  ContentView.swift
//  Qyestion Interface Demo V3
//
//  Created by Ahnaf Tahmid on 17/7/2026.
//


import SwiftUI

struct ContentView: View {
    @State private var allQuestions = questions
    @State private var expandedIndex: Int? = nil

    // Counting how many question has been answered.
    var answeredCount: Int {
        var answered = 0

        for question in allQuestions {
            if question.selectedOptionIDs.isEmpty == false {
                answered = answered + 1
            }
        }

        return answered
    }

    // That count as a fraction from 0 to 1 for the gauge
    var progress: Double {
        return Double(answeredCount) / Double(allQuestions.count)
    }

    var body: some View {
        ZStack {
            Color("BackgroundColor")
                .ignoresSafeArea()

            VStack {
                Text("Questionnaire")
                    .font(.title.bold())

                Text("Question \(answeredCount) of \(allQuestions.count)")
                    .font(.subheadline)
                    .foregroundColor(.black)

                Gauge(value: progress, in: 0...1) {
                }
                .tint(Color("ButtonColor"))
                .frame(width: 370)

                ScrollView {
                    VStack {
                        ForEach(allQuestions.indices, id: \.self) { index in
                            QuestionCard(
                                questionNumber: index + 1,
                                individualQuestion: $allQuestions[index],
                                isExpanded: expandedIndex == index, //For extending indivisual question when tapped
                                onTap: {
                                    if expandedIndex == index {
                                        expandedIndex = nil
                                    } else {
                                        expandedIndex = index
                                    }
                                }
                            )
                        }
                    }
                    .padding(.horizontal)
                    .padding(.top, 8)
                }

                Button {
                    // Scoring comes later
                } label: {
                    Text("Continue")
                        .font(.title3.bold())
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 300, height: 40)
                        .background(Color("ButtonColor"))
                        .cornerRadius(40)
                }
                .padding(.horizontal)
            }
            .padding(.top)
        }
    }
}

#Preview {
    ContentView()
}
