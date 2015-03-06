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

extension NSDate {
    func chineseZodiacAnimal()-> String {
        let startS = "1924"
        let f = NSDateFormatter()
        f.dateFormat = "yyyy"
        let s = f.dateFromString(startS)
        let d = self.formatDateForChineseYear()
        let interv = d.timeIntervalSinceDate(s!)
        let y = Int(interv / 60 / 60 / 24 / 365)
        let m = y % 12
        let animal = Animal(rawValue: m)!
        return animal.string()
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
date.chineseZodiacAnimal()