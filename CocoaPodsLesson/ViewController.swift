//
//  ViewController.swift
//  CocoaPodsLesson
//
//  Created by Dmitry Shamis on 9/28/15.
//  Copyright © 2015 Dmitry Shamis. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    @IBOutlet weak var jokeLabel: UILabel!

    @IBOutlet weak var chuckImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "jokeReceived:", name: "jokeFetched", object: nil)
    }
    
    func jokeReceived(notification: NSNotification) {
        jokeLabel.text = notification.object as? String
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func jokeRenderButton(sender: AnyObject) {
        
        let jokeProvider = JokeProvider(decorator: JokeDecorator())
        let chuckProvider = ChuckProvider()
        jokeProvider.getJoke()
        chuckProvider.getChuck(chuckImage)
    }
    
}

