//
//  ViewTransitions.swift
//  UINavegation
//
//  Created by Manuel Mouta on 10/03/17.
//  Copyright © 2017 Manuel Mouta. All rights reserved.
//

import UIKit

struct ViewTransitions{

    static func setTransition(vc : UIViewController, transitionType : String){
        let transition = CATransition()
        transition.duration = 0.5
        transition.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
        transition.type = transitionType
        vc.navigationController?.view.layer.add(transition, forKey: nil)
        _ = vc.navigationController?.popToRootViewController(animated: false)
    }

}


