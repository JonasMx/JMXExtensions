//
//  Date+Extensions.swift
//  amate
//
//  Created by Jonas Mahiques on 2018-08-18.
//  Copyright © 2018 Jonas Mahiques. All rights reserved.
//

import Foundation


public extension Date {
    public func socialize() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "E MMM dd, yyyy"
        
        return dateFormatter.string(from: self)        
    }        
}
