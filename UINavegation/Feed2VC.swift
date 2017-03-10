//
//  Feed2VC.swift
//  UINavegation
//
//  Created by Manuel Mouta on 10/03/17.
//  Copyright © 2017 Manuel Mouta. All rights reserved.
//

import UIKit

class Feed2VC : UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Feed2VC"
        
        self.navigationController?.isNavigationBarHidden = true
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func btnBack(_ sender: UIButton) {
        
        self.navigationController?.popViewController(animated: true)
        
    }
}
