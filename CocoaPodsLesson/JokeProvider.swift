//
//  JokeProvider.swift
//  CocoaPodsLesson
//
//  Created by Dmitry Shamis on 9/28/15.
//  Copyright © 2015 Dmitry Shamis. All rights reserved.
//

import UIKit
import Foundation
import Alamofire
import SwiftyJSON

class JokeProvider: NSObject {
    
    private var decorator:IDecorate?
    
    init(decorator: IDecorate) {
        self.decorator = decorator
    }
    
    func getJoke() {
        Alamofire.request(.GET, "http://api.icndb.com/jokes/random")
            .responseJSON { request, response, result in

                let jsonJoke = JSON(result.value!)
                let value = jsonJoke["value"]
                let joke = Joke()
                joke.sentence = String(value["joke"])
//                joke.id = Int(jsonJoke["id"])
                
                let jokeSentence:String = (self.decorator?.format(joke))!
                
                NSNotificationCenter.defaultCenter().postNotificationName("jokeFetched", object: jokeSentence)
        }
    }

}
