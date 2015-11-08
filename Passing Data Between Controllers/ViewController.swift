//
//  ViewController.swift
//  Passing Data Between Controllers
//
//  Created by Icaro Barreira Lavrador on 8/11/15.
//  Copyright © 2015 Swift Next Step. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var cell = String()
    var sub = String()
    
    @IBOutlet weak var cellLabel: UILabel!
    @IBOutlet weak var subLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        cellLabel.text = cell
        subLabel.text = sub
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

