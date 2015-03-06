//
//  NSDateExt.swift
//  RFZodiacExt
//
//  Created by Rich Fellure on 3/6/15.
//  Copyright (c) 2015 RichApps. All rights reserved.
//

import Foundation

public extension NSDate {

    convenience init(string: String) {
        let formatter = NSDateFormatter()
        formatter.dateFormat = "MMM d"
        let date = formatter.dateFromString(string)
        self.init(timeInterval: 0, sinceDate:date!)
    }

    /**
    Instance method that returns the Zodiac sign for the NSDate that it is called on.

    :returns: The Zodiac symbol associated to the NSDate object
    */
    public func getZodiacSign()-> Zodiac {
        let dates = ["March 20", "April 19", "May 20", "June 20", "July 22", "August 22", "September 23", "October 22", "November 21", "December 21", "January 19", "February 18"]
        for i in 0...11{
            let date = NSDate(string: dates[i])
            let second = i < 11 ? dates[i + 1] : dates[0] as String
            let sD = NSDate(string: second)
            let d = self.formatDate()
            if d.compare(date) == NSComparisonResult.OrderedDescending && d.compare(sD) == .OrderedAscending {
                return Zodiac(rawValue: i)!
            }
        }
        return Zodiac(rawValue: 1)!
    }

    /**
    Instance method that returns the Chinese Animal associated to the NSDate entered

    :returns: The Animal type enumerated value
    */
    public func chineseZodiacAnimal()-> Animal {
        let startS = "1924"
        let f = NSDateFormatter()
        f.dateFormat = "yyyy"
        let s = f.dateFromString(startS)
        let d = self.formatDateForChineseYear()
        let interv = d.timeIntervalSinceDate(s!)
        let y = Int(interv / 60 / 60 / 24 / 365)
        return Animal(rawValue: y % 12)!
    }

    private func formatDate()-> NSDate {
        let df = NSDateFormatter()
        df.dateFormat = "MMM d"
        let s = df.stringFromDate(self)
        let d = NSDate(string: s)
        return d
    }

    private func formatDateForChineseYear()-> NSDate {
        let df = NSDateFormatter()
        df.dateFormat = "yyyy"
        let s = df.stringFromDate(self)
        let d = NSDate(aString: s)
        return d
    }

    convenience init(aString: String) {
        let formatter = NSDateFormatter()
        formatter.dateFormat = "yyyy"
        let date = formatter.dateFromString(aString)
        self.init(timeInterval: 0, sinceDate:date!)
    }
}