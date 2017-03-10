//
//  ViewController.swift
//  UINavegation
//
//  Created by Manuel Mouta on 10/03/17.
//  Copyright © 2017 Manuel Mouta. All rights reserved.
//

import UIKit

class HomeVC : UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "HomeVC"
        
        
        let title2 = UILabel(frame: CGRect.init(x: 0, y: 0, width: 50, height: 30))
        title2.backgroundColor = UIColor.red
        title2.text = "asdasdsad"
        let selector = #selector(lalalaa)

        let tapGesture = UITapGestureRecognizer(target: self, action:selector)
        title2.isEnabled = true
        title2.isUserInteractionEnabled = true
        title2.addGestureRecognizer(tapGesture)
        
        
        
        self.navigationItem.titleView = title2
        
        let btn = UIBarButtonItem(title: "Back2", style: .plain, target: self, action: selector)
        let btn2 = UIBarButtonItem(title: "Back2", style: .plain, target: self, action: selector)

        self.navigationItem.leftBarButtonItems = [btn, btn2]
        self.navigationItem.rightBarButtonItems = [btn2]

    }

    func lalalaa() -> Void {
        print("lalalaa")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    //MARK: IBActions
    @IBAction func btnFeed1(_ sender: UIButton) {
        if let feed1VC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "Feed1VC") as? Feed1VC {
            self.present(feed1VC, animated: true, completion: { 
                //self.dismiss(animated: true, completion: {
                    
               // })
            })
        }
    }
    
    @IBAction func btnFeed2(_ sender: UIButton) {
        if let feed2VC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "Feed2VC") as? Feed2VC {
            if let navigator = navigationController {
                navigator.pushViewController(feed2VC, animated: true)
            }
        }
    }
    
    @IBAction func btnFeed3(_ sender: UIButton) {
        if let feed3VC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "Feed3VC") as? Feed3VC {
            if let navigator = navigationController {
                navigator.pushViewController(feed3VC, animated: true)
            }
        }
    }
}

