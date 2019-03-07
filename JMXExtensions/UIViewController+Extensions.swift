//
//  UIViewController+Extensions.swift
//  amate
//
//  Created by Jonas Mahiques on 2018-08-04.
//  Copyright © 2018 Jonas Mahiques. All rights reserved.
//

import UIKit

public extension UIViewController {
    public func popViewController(animated:Bool) {
        guard var vcs = self.navigationController?.viewControllers else { return }
        vcs.removeLast()
        self.navigationController?.setViewControllers(vcs, animated: animated)
    }
    
    public func showAlert(title:String?, message:String?, actions:[UIAlertAction]?) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        if let actions = actions {
            for action in actions {
                alert.addAction(action)
            }
        } else {
            let okAction = UIAlertAction(title: "Ok", style: .default, handler: nil)
            alert.addAction(okAction)
        }
        
        self.present(alert, animated: true, completion: nil)
    }
    
    public func registerForKeyboardWillShowNotification(_ scrollView: UIScrollView, usingBlock block: ((CGSize?) -> Void)? = nil) {
        _ = NotificationCenter.default.addObserver(forName: UIResponder.keyboardWillShowNotification, object: nil, queue: nil, using: { notification -> Void in
            let userInfo = notification.userInfo!
            let keyboardSize = (userInfo[UIResponder.keyboardFrameEndUserInfoKey]! as AnyObject).cgRectValue.size
            let contentInsets = UIEdgeInsets(top: scrollView.contentInset.top, left: scrollView.contentInset.left, bottom: keyboardSize.height, right: scrollView.contentInset.right)
            
            scrollView.setContentInsetAndScrollIndicatorInsets(contentInsets)
            block?(keyboardSize)
        })
    }
    
    public func registerForKeyboardWillHideNotification(_ scrollView: UIScrollView, usingBlock block: (() -> Void)? = nil) {
        _ = NotificationCenter.default.addObserver(forName: UIResponder.keyboardWillHideNotification, object: nil, queue: nil, using: { _ -> Void in
            let contentInsets = UIEdgeInsets(top: scrollView.contentInset.top, left: scrollView.contentInset.left, bottom: 0, right: scrollView.contentInset.right)
            
            scrollView.setContentInsetAndScrollIndicatorInsets(contentInsets)
            block?()
        })
    }
}
