//
//  DateFormatter+Extensions.swift
//  JMXExtensions
//
//  Created by Jonas Mahiques on 2019-04-23.
//  Copyright © 2019 Jonas Mahiques. All rights reserved.
//

import Foundation

public extension DateFormatter {
    public static let iso8601Full: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSZZZZZ"
        formatter.calendar = Calendar(identifier: .iso8601)
        formatter.timeZone = TimeZone(secondsFromGMT: 0)
        formatter.locale = Locale(identifier: "en_US_POSIX")
        return formatter
    }()
}
