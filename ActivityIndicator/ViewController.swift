//
//  ViewController.swift
//  ActivityIndicator
//
//  Created by IMCS2 on 2/24/19.
//  Copyright © 2019 IMCS2. All rights reserved.
//

import UIKit
import NVActivityIndicatorView

class ViewController: UIViewController {
    
    var newIndicator : NVActivityIndicatorView!
    
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    override func viewDidLoad() {
        super.viewDidLoad()
        initProperties()
        // Do any additional setup after loading the view, typically from a nib.
        activityIndicator.color = .black
        activityIndicator.isHidden = true
        
        newIndicator.type = .circleStrokeSpin
        newIndicator.color = UIColor.black
        self.view.addSubview(newIndicator)
    
    }

 
    func initProperties(){
        let frame = CGRect(x: (UIScreen.main.bounds.width / 2) - 25 , y: 100, width: 50, height: 50)
        newIndicator = NVActivityIndicatorView(frame: frame)
    }
    
    @IBAction func startIndicator(_ sender: Any) {
          activityIndicator.startAnimating()
          activityIndicator.backgroundColor = UIColor.black.withAlphaComponent(0.2)
          newIndicator.startAnimating()
          activityIndicator.isHidden = false
    }
    
    @IBAction func stopIndicator(_ sender: Any) {
          activityIndicator.stopAnimating()
          newIndicator.stopAnimating()
          activityIndicator.isHidden = true
    }
}

