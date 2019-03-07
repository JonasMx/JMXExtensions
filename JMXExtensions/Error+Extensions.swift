//
//  Error+Extensions.swift
//  amate
//
//  Created by Jonas Mahiques on 2018-09-27.
//  Copyright © 2018 Jonas Mahiques. All rights reserved.
//

import Foundation

public extension Error {
    public var code: Int { return (self as NSError).code }
    public var domain: String { return (self as NSError).domain }
    
    public func log() {
        print("[\(self.code)] - " + self.localizedDescription)
    }
}
