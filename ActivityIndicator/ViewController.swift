//
//  ViewController.swift
//  ActivityIndicator
//
//  Created by IMCS2 on 2/24/19.
//  Copyright © 2019 IMCS2. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        activityIndicator.color = .black
        activityIndicator.isHidden = true
      
    }

 
    @IBAction func startIndicator(_ sender: Any) {
          activityIndicator.startAnimating()
          activityIndicator.isHidden = false
    }
    
    @IBAction func stopIndicator(_ sender: Any) {
          activityIndicator.stopAnimating()
          activityIndicator.isHidden = true
    }
}

