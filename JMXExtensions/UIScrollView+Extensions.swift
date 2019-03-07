//
//  UIScrollView+Extensions.swift
//  amate
//
//  Created by Jonas Mahiques on 2018-09-26.
//  Copyright © 2018 Jonas Mahiques. All rights reserved.
//

import UIKit

public extension UIScrollView {
    public func setContentInsetAndScrollIndicatorInsets(_ edgeInsets: UIEdgeInsets) {
        self.contentInset = edgeInsets
        self.scrollIndicatorInsets = edgeInsets
    }
}
