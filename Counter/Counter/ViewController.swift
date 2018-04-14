//
//  ViewController.swift
//  Counter
//
//  Created by Olav on 14/04/2018.
//  Copyright © 2018 olaven. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var count : Int = 0;
    @IBOutlet weak var headerLabel: UILabel!
    @IBOutlet weak var outputLabel: UILabel!
    
    @IBAction func buttonPressed(_ sender: Any) {
        count += 1;
        updateMyView();
    }
    
    func updateMyView(){
        outputLabel.text = String(count);
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateMyView();
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

