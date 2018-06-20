//
//  ViewController.swift
//  addingViews
//
//  Created by Olav on 20/06/2018.
//  Copyright © 2018 olaven. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        let labelRect = CGRect(x: 100, y: 100, width: 200, height: 100)
        let label = UILabel(frame : labelRect)
        label.text = "I am added"
        view.addSubview(label)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

