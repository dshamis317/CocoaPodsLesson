//
//  JokeDecorator.swift
//  CocoaPodsLesson
//
//  Created by Dmitry Shamis on 9/28/15.
//  Copyright © 2015 Dmitry Shamis. All rights reserved.
//

import UIKit

class JokeDecorator: NSObject, IDecorate {
    private let salutation:String = "Mr. Norris said: "
    
    func format(value: Joke) -> String {
        return "\(salutation) \(value.sentence)"
    }
}
