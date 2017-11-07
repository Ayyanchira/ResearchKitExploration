//
//  Survey_HScale.swift
//  ResearchKitExploration
//
//  Created by Ayyanchira, Akshay Murari on 11/6/17.
//  Copyright © 2017 Akshay Ayyanchira. All rights reserved.
//

import Foundation
import ResearchKit

public var Survey_HScale: ORKNavigableOrderedTask{
    
    let questionA = ORKQuestionStep(identifier: "BloodPressure")
    questionA.text = "Has your doctor told you that you have high blood pressure?"
    questionA.answerFormat = ORKBooleanAnswerFormat()
    
    let questionB = ORKQuestionStep(identifier: "Pills")
    questionB.text = "Has your doctor prescribed medication or pills to treat your high blood pressure?"
    questionB.answerFormat = ORKBooleanAnswerFormat()
    
    let questionC = ORKQuestionStep(identifier: "questionC")
    questionC.answerFormat = ORKBooleanAnswerFormat()
    
    
    
    
    
    //Medication Use
    let questionMedication = ORKQuestionStep(identifier: "medication")
    questionMedication.title = "How many of the past 7 days did you:"
    questionMedication.text = "Take your blood pressure pills?"
//    let orkTextChoices = ORKTextChoice(text: "0", value: NSCoding)
    
//    let valuePicker = ORKValuePickerAnswerFormat(textChoices: [ORKTextChoice])
    
    
    let numberOfDays = ORKChoiceQuestionResult()
    numberOfDays.setValuesForKeys([
        "1" : "One",
        "2" : "Two",
        "3" : "Threee",
        "4" : "Four",
        "5" : "Five",
        "6" : "Six",
        "7" : "Seven",
        "0" : "Zero"
        ])
    
   
    let valuePicker = ORKValuePickerAnswerFormat(textChoices: numberOfDays)
    questionMedication.answerFormat = ORKMultipleValuePickerAnswerFormat(valuePickers: valuePicker)
    
    let steps = [questionA, questionB, questionC,questionMedication]
    let task = ORKNavigableOrderedTask(identifier: "task", steps: steps)
    let rule = ORKDirectStepNavigationRule(destinationStepIdentifier: questionC.identifier)
    task.setNavigationRule(rule, forTriggerStepIdentifier: questionA.identifier)
    return task
    
}
