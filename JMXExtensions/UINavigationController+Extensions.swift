//
//  UINavigationViewController+Extensions.swift
//  JMXExtensions
//
//  Created by Jonas Mahiques on 2019-04-18.
//  Copyright © 2019 Jonas Mahiques. All rights reserved.
//

import Foundation

extension UINavigationController {
    public func pushViewController(_ controller:UIViewController, from:CATransitionSubtype) {
        let transition:CATransition = CATransition()
        transition.duration = 0.5
        transition.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut)
        transition.type = CATransitionType.moveIn
        transition.subtype = from
        
        view.layer.add(transition, forKey: nil)
        pushViewController(controller, animated: false)
    }
    
    public func closeView(from:CATransitionSubtype) {
        let transition = CATransition()
        transition.duration = 0.5
        transition.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut)
        transition.type = CATransitionType.reveal
        transition.subtype = from
        
        view.layer.add(transition, forKey: nil)
        dismiss(animated: false, completion: nil)        
    }
}
