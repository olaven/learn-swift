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
        for i in 1...10 {
            let label = UILabel(frame: CGRect(x: 200, y: i * 100, width: 100, height: 100))
            label.text = "item : " + String(i)
            view.addSubview(label)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

