//
//  Int+Extensions.swift
//  JMXFramework
//
//  Created by Jonas Mahiques on 2019-01-11.
//  Copyright © 2019 Jonas Mahiques. All rights reserved.
//

import Foundation

public extension Int {
    public func socialized() -> String {
        if self < 1000 {
            return "\(self)"
        } else if self < 10000 {
            return String(format:"%.3f", Double(self)/1000)
        } else if self < 1000000 {
            let parts = String(format:"%.1f", Double(self)/1000).split(separator: ".")
            return parts[1] == "0" ? parts[0]+"k" : parts[0]+"."+parts[1]+"k"
        }
        else {
            let parts = String(format:"%.1f", Double(self)/1000000).split(separator: ".")
            return parts[1] == "0" ? parts[0]+"M" : parts[0]+"."+parts[1]+"M"
        }
    }
}
