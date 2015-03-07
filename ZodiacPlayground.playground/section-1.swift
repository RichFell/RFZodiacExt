// Playground - noun: a place where people can play

import UIKit

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
}

public enum Zodiac : Int {
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
    public func string() -> String {
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

    //From http://neurolove.me/post/29034134717/zodiac-signs-strengths-and-weaknesses

    /**
    The strengths for the Zodiac type

    :returns: The String for the strengths
    */
    public func strengths()->String {
        switch self {
        case .Aries:
            return "Courage, determination, self-confidence, enthusiasm."
        case .Taurus:
            return "Dependable, patient, musical, practical."
        case .Gemini:
            return "Curiosity, ability to share ideas, adaptable, affectionate, kind."
        case .Cancer:
            return "Compassion, emotional sensitivity, fierce protection of loved ones, tenacity."
        case .Leo:
            return "Warmth, humor, pride, joy, creativity, passion, generosity."
        case .Virgo:
            return "Practical, loyal, hardworking, analytical, kind."
        case .Libra:
            return "Social, fair-minded, cooperative, diplomatic, gracious."
        case .Scorpio:
            return "Passionate, stubborn, resourceful, brave, a true friend."
        case .Sagittarius:
            return "Great sense of humor, idealistic, generous."
        case .Capricorn:
            return "Responsible, good managers, disciplined, self-control, dark sense of humor."
        case .Aquarius:
            return "Progressive, original, humanitarian, independent."
        case .Pisces:
            return "Intuitive, compassionate, artistic, gentle, wise, musical."
        }
    }

    /**
    The weaknesses of the Zodiac type

    :returns: The String value of the weaknesses
    */
    public func weaknesses()->String {
        switch self {
        case .Aries:
            return "Impatience, silly arguments, allowing fear to limit choices."
        case .Taurus:
            return "Stubborn, uncompromising, possessive."
        case .Gemini:
            return "Scattering energy in too many places at once, fickle in love, nervous, short attention span."
        case .Cancer:
            return "Manipulative, indirect conflict, clinging to the past, insecure, packrat."
        case .Leo:
            return "Arrogance, stubbornness, inflexibility, self-centeredness, laziness."
        case .Virgo:
            return "Worry, shyness, overly critical of self and others, all work and no play."
        case .Libra:
            return "Indecisive, will carry a grudge, avoids confrontations, self-pity"
        case .Scorpio:
            return "Jealous, distrusting, secretive, violent, caustic"
        case .Sagittarius:
            return "Will say anything no matter how undiplomatic, promises more than can deliver, can be impatient to the point of rudeness."
        case .Capricorn:
            return "Know-it-all, unforgiving, condescending, expecting the worst."
        case .Aquarius:
            return "Runs from emotional expression, uncompromising, temperamental, aloof."
        case .Pisces:
            return "Can be a victim or martyr, fearful, overly trusting, sad, desire to escape reality."
        }
    }
}

public extension NSDate {

    private convenience init(string: String) {
        let formatter = NSDateFormatter()
        formatter.dateFormat = "MMM d"
        let date = formatter.dateFromString(string)
        self.init(timeInterval: 0, sinceDate:date!)
    }

    /**
    Instance method that returns the Zodiac sign for the NSDate that it is called on.

    :returns: The Zodiac symbol associated to the NSDate object
    */
    public func zodiacSign()-> Zodiac {
        let dates = ["March 20", "April 19", "May 20", "June 20", "July 22", "August 22", "September 23", "October 22", "November 21", "December 21", "January 19", "February 18"]
        for i in 0...11{
            let date = NSDate(string: dates[i])
            let second = i < 11 ? dates[i + 1] : dates[0] as String
            let sD = NSDate(string: second)
            let d = self.formatDateForZodiac()
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
//    func chineseZodiacAnimal()-> Animal {
//        let startS = "1924"
//        let f = NSDateFormatter()
//        f.dateFormat = "yyyy"
//        let s = f.dateFromString(startS)
//        let d = self.formatDateForChineseYear()
//        let interv = d.timeIntervalSinceDate(s!)
//        let y = Int(interv / 60 / 60 / 24 / 365)
//        return Animal(rawValue: y % 12)!
//    }

    func checkIfDateIsBetween(#firstDate: NSDate, secondDate: NSDate)-> Bool {
        let first = NSDate(date: firstDate)
        let second = NSDate(date: secondDate)
        let d = NSDate(date: self)
        if d.compare(first) == .OrderedDescending && d.compare(second) == .OrderedAscending {
            return true
        }

        return false
    }

    private convenience init(date: NSDate) {
        let f = NSDateFormatter()
        f.dateFormat = "MM dd yyyy"
        let s = f.stringFromDate(date)
        let d = f.dateFromString(s)!
        self.init(timeInterval: 0, sinceDate: d)
    }

    private func formatDateForZodiac()-> NSDate {
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


let date = NSDate()
//date.chineseZodiacAnimal()
