//
//  QuestionData.swift
//  Qyestion Interface Demo V3
//
//  Created by Ahnaf Tahmid on 17/7/2026.
//


import Foundation

let questions: [Question] = [
    Question(questionName: "Do you currently have a rash or skin problem?",
             listOfOptions: [Option(optionName: "Yes", weight: 2),
                             Option(optionName: "No", weight: 0),
                             Option(optionName: "Not sure", weight: 1)],
             allowMultipleSelection: false),

    Question(questionName: "How itchy is the skin problem?",
             listOfOptions: [Option(optionName: "Not itchy", weight: 0),
                             Option(optionName: "Mildly itchy", weight: 1),
                             Option(optionName: "Moderately itchy", weight: 2),
                             Option(optionName: "Severely itchy", weight: 3)],
             allowMultipleSelection: false),

    Question(questionName: "How dry, cracked, or flaky is the skin?",
             listOfOptions: [Option(optionName: "None", weight: 0),
                             Option(optionName: "Mild", weight: 1),
                             Option(optionName: "Moderate", weight: 2),
                             Option(optionName: "Severe", weight: 3)],
             allowMultipleSelection: false),

    Question(questionName: "Is the skin red, inflamed, or irritated?",
             listOfOptions: [Option(optionName: "No", weight: 0),
                             Option(optionName: "Slightly", weight: 1),
                             Option(optionName: "Moderately", weight: 2),
                             Option(optionName: "Severely", weight: 3)],
             allowMultipleSelection: false),

    Question(questionName: "Which symptom affects you the most?",
             listOfOptions: [Option(optionName: "Itch", weight: 1),
                             Option(optionName: "Redness or irritation", weight: 1),
                             Option(optionName: "Dryness or cracking", weight: 1),
                             Option(optionName: "Pain or soreness", weight: 3),
                             Option(optionName: "Sleep disturbance", weight: 2),
                             Option(optionName: "Oozing or crusting", weight: 3)],
             allowMultipleSelection: true),

    Question(questionName: "Have you noticed any warning signs?",
             listOfOptions: [Option(optionName: "Yellow or honey-colored crust", weight: 3),
                             Option(optionName: "Pus or leaking fluid", weight: 3),
                             Option(optionName: "Swelling", weight: 2),
                             Option(optionName: "Skin feels warm or hot", weight: 1),
                             Option(optionName: "Fever or feeling unwell", weight: 3),
                             Option(optionName: "None of the above", weight: 0)],
             allowMultipleSelection: true),

    Question(questionName: "How much pain do you feel from the skin problem?",
             listOfOptions: [Option(optionName: "0 to 2", weight: 0),
                             Option(optionName: "3 to 5", weight: 1),
                             Option(optionName: "6 to 8", weight: 2),
                             Option(optionName: "9 to 10", weight: 3)],
             allowMultipleSelection: false),

    Question(questionName: "How much is it affecting your sleep?",
             listOfOptions: [Option(optionName: "Not at all", weight: 0),
                             Option(optionName: "A little", weight: 1),
                             Option(optionName: "Moderately", weight: 2),
                             Option(optionName: "A lot", weight: 3)],
             allowMultipleSelection: false),

    Question(questionName: "What do you think may have triggered it?",
             listOfOptions: [Option(optionName: "Stress", weight: 1),
                             Option(optionName: "Weather changes", weight: 1),
                             Option(optionName: "New skincare products, soap, or detergent", weight: 1),
                             Option(optionName: "Clothing or friction", weight: 1),
                             Option(optionName: "I do not know", weight: 0)],
             allowMultipleSelection: true),

    Question(questionName: "Is the skin problem spreading or getting worse?",
             listOfOptions: [Option(optionName: "No", weight: 0),
                             Option(optionName: "Yes", weight: 2),
                             Option(optionName: "Not sure", weight: 1)],
             allowMultipleSelection: false)
]
