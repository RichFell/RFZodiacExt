//
//  NSDateExt.swift
//  RFZodiacExt
//
//  Created by Rich Fellure on 3/6/15.
//  Copyright (c) 2015 RichApps. All rights reserved.
//

import Foundation

extension NSDate {

    convenience init(string: String) {
        let formatter = NSDateFormatter()
        formatter.dateFormat = "MMM d"
        let date = formatter.dateFromString(string)
        self.init(timeInterval: 0, sinceDate:date!)
    }

    func getZodiacSign()-> String {
        let signs = ["Aries", "Taurus", "Gemini", "Cancer", "Leo", "Virgo", "Libra", "Scorpio", "Sagittarius", "Capricorn", "Aquarius", "Pisces"]

        let dates = ["March 20", "April 19", "May 20", "June 20", "July 22", "August 22", "September 23", "October 22", "November 21", "December 21", "January 19", "February 18"]
        for i in 0...11{
            let date = NSDate(string: dates[i])
            let second = i < 11 ? dates[i + 1] : dates[0] as String
            let sD = NSDate(string: second)
            let d = self.formatDate()
            if d.compare(date) == NSComparisonResult.OrderedDescending && d.compare(sD) == .OrderedAscending {
                return signs[i]
            }
        }
        return ""
    }

    private func formatDate()-> NSDate {
        let df = NSDateFormatter()
        df.dateFormat = "MMM d"
        let s = df.stringFromDate(self)
        let d = NSDate(string: s)
        return d
    }
}