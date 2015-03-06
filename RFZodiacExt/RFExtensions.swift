//
//  NSDateExt.swift
//  RFZodiacExt
//
//  Created by Rich Fellure on 3/6/15.
//  Copyright (c) 2015 RichApps. All rights reserved.
//

import Foundation


/**
Enum Related to the Chinese Animals.
*/
enum Animal : Int {
    case Rat
    case Ox
    case Tiger
    case Rabbit
    case Dragon
    case Snake
    case Horse
    case Goat
    case Monkey
    case Rooster
    case Dog
    case Pig

    /**
    This method can be called to return the String value for the associated Animal type

    :returns: the String value for the Animal type
    */
    func string()->String {
        switch self {
            case .Rat: return "Rat"
            case .Ox: return "Ox"
            case .Tiger: return "Tiger"
            case .Rabbit: return "Rabbit"
            case .Dragon: return "Dragon"
            case .Snake: return "Snake"
            case .Horse: return "Horse"
            case .Goat: return "Goat"
            case .Monkey: return "Monkey"
            case .Rooster: return "Rooster"
            case .Dog: return "Dog"
            case .Pig: return "Pig"
        }
    }

    func strengths()->String {
        switch self {
        case .Rat:
            return "People under this sign are usually smart and wealthy and will work for success. They are sanguine and very adaptable, being popular with others. Rat girls have a flair for cleanliness and tidiness. They are clever and adorable, personable and materialistic. They are also by nature thoughtful, sensible, judiciously and curious. "
        case .Ox:
            return " "
        }
    }
    func weaknesses()->String {
        switch self {
        case Rat:
            return "They are usually timid, lack of concentration and stability. They are in need of courage introspection, principles and responsibility. The do not look authoritatively, incapable of assuming a leading position. They stick fast and refused to be influenced. They are easily guided only by their private interests. They have natural goodness but look unpolite. They are also iobstinate and selfish. They are likely to speculate and they profess their greed as a virtue."
        }
    }

    func luckyColors()-> String {
        
    }

    //TODO: Add in the description of the different animal years.
}


/**
Enum for the Zodiac symbol

*/
enum Zodiac : Int {
    case Aries
    case Taurus
    case Gemini
    case Cancer
    case Leo
    case Virgo
    case Libra
    case Scorpio
    case Sagittarius
    case Capricorn
    case Aquarius
    case Pisces

    /**
    String representation of the Zodiac type

    :returns: The String value for the Zodiac type
    */
    func string() -> String {
        switch self {
            case .Aries: return "Aries"
            case .Taurus: return "Taurus"
            case .Gemini: return "Gemini"
            case .Cancer: return "Cancer"
            case .Leo: return "Leo"
            case .Virgo: return "Virgo"
            case .Libra: return "Libra"
            case .Scorpio: return "Scorpio"
            case .Sagittarius: return "Sagittarius"
            case .Capricorn: return "Capricorn"
            case .Aquarius: return "Aquarius"
            case .Pisces: return "Pisces"
        }
    }
}

extension NSDate {

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
    func getZodiacSign()-> Zodiac {
        let signs = ["Aries", "Taurus", "Gemini", "Cancer", "Leo", "Virgo", "Libra", "Scorpio", "Sagittarius", "Capricorn", "Aquarius", "Pisces"]

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
    func chineseZodiacAnimal()-> Animal {
        let startS = "1924"
        let f = NSDateFormatter()
        f.dateFormat = "yyyy"
        let s = f.dateFromString(startS)
        let d = self.formatDateForChineseYear()
        let interv = d.timeIntervalSinceDate(s!)
        let y = Int(interv / 60 / 60 / 24 / 365)
        let animal = Animal(rawValue: y % 12)!
        return animal
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