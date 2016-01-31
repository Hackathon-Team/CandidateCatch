//
//  ViewController.swift
//  CSVText
//
//  Created by Rohan Taori on 1/31/16.
//  Copyright © 2016 ARRA. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let fileLocation = NSBundle.mainBundle().pathForResource("Crime", ofType: "txt")!
        
        var error: NSErrorPointer = nil
        
        if let csv = CSV(contentsOfFile: fileLocation, error: error) {
            // Rows
            let rows = csv.rows
            let alice = csv.rows[0]    //=> ["id": "1", "name": "Alice", "age": "18"]
            print(alice)
            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

