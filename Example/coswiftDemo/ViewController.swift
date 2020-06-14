//
//  ViewController.swift
//  coswiftDemo
//
//  Created by ACE_xW on 14/06/2020.
//  Copyright © 2020 ACE_xW. All rights reserved.
//

import Cocoa
import coswift

class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        co_launch {
            let str = try DataService.shared.fetchWeatherData()
            print("\(str)")
        }
        
        let queue = DispatchQueue(label: "MyQueue")
        co_launch(queue: queue) {
            print("hehe")
        }
        
        co_launch(stackSize: 128 * 1024) {
            print("haha")
        }
        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

