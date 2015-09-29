//
//  ChuckProvider.swift
//  CocoaPodsLesson
//
//  Created by Dmitry Shamis on 9/28/15.
//  Copyright © 2015 Dmitry Shamis. All rights reserved.
//

import UIKit
import Foundation
import Alamofire

class ChuckProvider: NSObject {
    
    func getChuck(chuckImage:UIImageView) {
        if let url = NSURL(string: "http://cdn.meme.am/instances/250x250/12087548.jpg") {
            if let data = NSData(contentsOfURL: url){
                chuckImage.contentMode = UIViewContentMode.ScaleAspectFit
                chuckImage.image = UIImage(data: data)
            }
        }
    }

}
