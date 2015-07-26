//
//  ViewController.swift
//  Adios
//
//  Created by Armand Grillet on 27/06/2015.
//  Copyright © 2015 Armand Grillet. All rights reserved.
//

import UIKit
import SafariServices

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.reloadBlockerList(UIButton())
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func reloadBlockerList(sender: UIButton) {
        SFContentBlockerManager.reloadContentBlockerWithIdentifier("AG.Adios.List") { (error: NSError?) -> Void in
            print(error)
        }
    }
}

