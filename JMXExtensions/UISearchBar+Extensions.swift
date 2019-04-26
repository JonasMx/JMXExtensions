//
//  UISearchBar+Extensions.swift
//  amate
//
//  Created by Jonas Mahiques on 2018-09-21.
//  Copyright © 2018 Jonas Mahiques. All rights reserved.
//

import UIKit

public extension UISearchBar {
    public var searchField:UITextField? {
        get {
            return self.value(forKey: "searchField") as? UITextField
        }
    }
    
    public var cancelButton:UIButton? {
        get {
            return self.value(forKey: "cancelButton") as? UIButton
        }
    }
    
    public var clearButton:UIButton? {
        get {
            return self.searchField?.value(forKey: "_clearButton") as? UIButton
        }
    }
    
    public var glassIconView:UIImageView? {
        get {
            return self.searchField?.leftView as? UIImageView
        }
    }
    
    public func setClearButtonColor(color:UIColor) {
        if let clearButtonImage = self.clearButton?.image(for: .highlighted) {
            let tintedClearImage = clearButtonImage.imageWithColor(UIColor.white.darker(by: 10.0))
            self.clearButton?.setImage(tintedClearImage, for: .normal)
            self.clearButton?.setImage(tintedClearImage, for: .highlighted)
        }
    }
    
    public func setGlassIconViewTintColor(color:UIColor) {
        self.glassIconView?.image = self.glassIconView?.image?.withRenderingMode(.alwaysTemplate)
        self.glassIconView?.tintColor = UIColor.white.darker(by: 10.0)
    }
    
    @IBInspectable public var doneAccessory: Bool {
        get {
            return self.doneAccessory
        }
        set(hasDone) {
            if hasDone {
                addDoneButtonOnKeyboard()
            }
        }
    }
    
    public func addDoneButtonOnKeyboard() {
        let doneToolbar: UIToolbar = UIToolbar(frame: CGRect.init(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 50))
        doneToolbar.barStyle = .default
        
        let flexSpace = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let done: UIBarButtonItem = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(self.doneButtonAction))
        
        let items = [flexSpace, done]
        doneToolbar.items = items
        doneToolbar.sizeToFit()
        
        self.inputAccessoryView = doneToolbar
    }
    
    @objc public func doneButtonAction() {
        self.resignFirstResponder()
    }
}
