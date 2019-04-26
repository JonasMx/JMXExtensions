//
//  Notification+Extensions.swift
//  JMXExtensions
//
//  Created by Jonas Mahiques on 2019-04-26.
//  Copyright © 2019 Jonas Mahiques. All rights reserved.
//

import Foundation

public extension Notification {
    public var keyboardFrameBeginUserInfoKey:CGRect? {
        return self.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? CGRect
    }
        
    public var keyboardFrameEndUserInfoKey:CGRect? {
        return self.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? CGRect
    }
    
    public var keyboardAnimationCurveUserInfoKey:UIView.AnimationCurve? {
        return self.userInfo?[UIResponder.keyboardAnimationCurveUserInfoKey] as? UIView.AnimationCurve
    }
    
    public var keyboardAnimationDurationUserInfoKey:Double? {
        return self.userInfo?[UIResponder.keyboardAnimationDurationUserInfoKey] as? Double
    }
    
    public var keyboardIsLocalUserInfoKey:Bool? {
        return self.userInfo?[UIResponder.keyboardIsLocalUserInfoKey] as? Bool
    }
}
