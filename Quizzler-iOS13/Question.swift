//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by M_AMBIN02724 on 07/02/22.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import Foundation

// This struct shows the format and data-type of the question

struct Question {
    let textQuestion: String
    let answer: String
    
    init(q: String, a: String ) {
        textQuestion = q
        answer = a
    }
}
