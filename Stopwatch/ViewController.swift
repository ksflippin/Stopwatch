//
//  ViewController.swift
//  Stopwatch
//
//  Created by Kerry Flippin on 2/26/15.
//  Copyright (c) 2015 Kerry Flippin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = NSTimer()

    var count = 0

    func result() {
        
        count++
        
        label.text = "\(count)"

        
    }

    @IBOutlet var label: UILabel!
    
    @IBAction func Reset(sender: AnyObject) {
        
        timer.invalidate()

        count = 0
        
        label.text = "0"
    }
    
    @IBAction func Start(sender: AnyObject) {
        
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("result"), userInfo: nil, repeats: true)
        
        
    }
    
    @IBAction func Stop(sender: AnyObject) {
        
        timer.invalidate()
    }
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

