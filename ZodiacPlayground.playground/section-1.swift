// Playground - noun: a place where people can play

import UIKit

public enum Animal : Int {
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
    public func name()->String {
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

    //From http://www.travelchinaguide.com/intro/social_customs/zodiac/

    /**
    The personality Strenghts for the Animal type

    :returns: The String explaining the personality strengths for the Animal
    */
    public func strengths()->String {
        switch self {
        case .Rat:
            return "People under this sign are usually smart and wealthy and will work for success. They are sanguine and very adaptable, being popular with others. Rat girls have a flair for cleanliness and tidiness. They are clever and adorable, personable and materialistic. They are also by nature thoughtful, sensible, judiciously and curious. "
        case .Ox:
            return "Ox people are probably honest, industrious, patient, and cautious, and do things steadily. They are talent leader with strong will and faith, strong devotion to work and staying power. They are not easily affected by others or their surroundings but just follow their concept and ability. They are contemplative before taking actions and can make a clear distinction between right and wrong. Women are usually good wives who pay attention to their children's education. In short, people under the ox sigh are tender-hearted, having amiable temper and an honesty nature. They are usually conservative. They hold respect to the tradition and value job and family highly. "
        case .Tiger:
            return "Tolerance, loyalty, valor, being respected are their nice characteristics. They like challenges and speed and they are active and good at expressing themselves. They have strong sense of errantry, be frank and easy to win others' trust. In their middle age, their fate may be uneven, but afterwards will enjoy a bright prospect. Most women under the tiger sign are intelligent, faithful and virtuous."
        case .Rabbit:
            return "People born under the sign of the rabbit are gentle, sensitive, compassionate, amiable, modest and merciful, and have strong memory. They like to communicate with others in a humorous manner. They cannot bear dull life, so they are good at creating romantic or interesting spice. They are soft-spoken and welcoming, being fond of peaceful love life. They hate arguing with capacity of converting an enemy into a friend. They are homebody and hospitable, and like house fitting-up.  They can work with speed and efficiency, do not insist and get angry easily."
        case .Dragon:
            return "Good characteristis of Dragon people are lively, intellectual, energetic and excitable. They often can be leaders and try to go for perfection. When they meet with difficulties, they are not discouraged. They are magnanimous, romantic and sensitive about their reputation. They usually have great ambition and an ingenuous personality. They hate hypocrisy, gossip and slander. They are not afraid of difficulties but hate to be used or controlled by others."
        case .Snake:
            return "Good temper and a skill at communicating but saying little are their good characteristics. They possess gracious morality and great wisdom. They are usually financially secure and do not have to worry about money. They have tremendous sympathy for others and would like to take actions to help ther fellow human beings. They are determined to accomplished their goals hate to fail. Although they look calm on the surface, they are intense and passionate. They have a rich source of inspiration and understand themselves well. They are people of great perception. Women under the sign of the snake do well in housework but are irritable."
        case .Horse:
            return "Most of them are born with nice personalities, such as warm-hearted, upright, easygoing, so they usually have a lot of friends flocking around. Independence and endurance makes them more powerful, and they will never give in facing the bitter suffering. Positive attitude leads everything to a bright direction."
        case .Goat:
            return "gentle, softhearted, considerate, attractive, hardworking, persistent, thrift"
        case .Monkey:
            return "There are more erratic geniuses in their character and life. Those born in the Year of the Monkey are lively, flexible, quick-witted and versatile. They love moving about and sports. Being talented problem solvers, they are self-assured, sociable and innovative, with competent practical ability. They are even willing to put their own business aside to help others. They have strong desire for knowledge and have excellent memories. When communicating, they do not like to be controlled and have a strong desire to present themselves. They will show amazing creativity in their work."
        case .Rooster:
            return "They are deep thinkers considered to be honest, bright, communicative, ambitious, capable and warm-hearted. Strong self-respect and seldom relying on others are their basic characteristics. As most roosters are born pretty or handsome, they prefer to dress up. They have a quick mind and hot temper. They like to be busy and neat. They are not reluctant to fall behind others and hate dawdlers."
        case .Dog:
            return "One born in the Year of Dog has a straightforward characteristic. In their career and love, they are faithful, courageous, dexterous, smart and warm-hearted. They know how to keep secrets and inspire other people's confidence. Those people make good leaders. If they fall in love with someone, they would not change. They can be terribly stubborn with the right things."
        case .Pig:
            return "People born in the Year of the Pig are honest and frank, chivalrous and gallant. They have a calm appearance and strong heart. They do whatever they want with their strength. They are tolerant and optimistic, but not until they become your friends can their virtue, advantages and fidelity to friendship be appreciated. They are quick tempered, but hate arguments and quarreling. They are kind to their loved ones. They are not afraid of difficulties and problems but try to work them out. They treat friend sincerely and they do not tell lies unless they have to. They are kind and light hearted and usually go to sleep easily."
        }
    }

    /**
    The personality weaknesses for the Animal type

    :returns: The string write-up of the Animal type's personality weaknesses
    */
    public func weaknesses()->String {
        switch self {
        case Rat:
            return "They are usually timid, lack of concentration and stability. They are in need of courage introspection, principles and responsibility. The do not look authoritatively, incapable of assuming a leading position. They stick fast and refused to be influenced. They are easily guided only by their private interests. They have natural goodness but look unpolite. They are also iobstinate and selfish. They are likely to speculate and they profess their greed as a virtue."
        case .Ox:
            return "They are obstinate and poor at communication. Leaders in their career may not discover their abilities. They looks prudish and distant, but not feminine, charming and lively enough. They usually do not get a great facility in speaking, being silent and persistent in their old ways. In their old age, they would be usually bestowed with happiness."
        case .Tiger:
            return "Tigers usually tend to show off before others. They are given to deep thinking and capable of great sympathy, however, they can be short-tempered without interest with long-term endeavor. Sometimes, they come into conflict easily with the seniors and people in authority. Their hasty mind and decision may cause poor results. Weakness of characteristics such as over confident and traitorous may result in unsuccessful communication and cooperation with others."
        case .Rabbit:
            return "They lack meditative abilities and often sink money into ideas that may cause failures in their career. They are amorous and not determined, soft in appearance and stubborn inside. They usually do not submit to dreary life, but create romance. They are not good at delving deeply and likely to escape the reality. They may lose good chances because of reserved characteristic traits. "
        case .Dragon:
            return "They are a little arrogant and impatient, while dragon women can be over- confident. Sometimes, 'dragons' are unable to control their moods very well due to being eccentric, tactless, fiery, intolerant and unrealistic. They may feel blank about the future. There is no lack of romance in their life over all, but they seldom give true love. Therefore, they do not usually show disappointment in love. They may criticize others for their inefficiency at work. They have a nature ardent to excess and couldn't withstand setbacks which make them flee away. If they overcome these defects, they can have a brighter future."
        case .Snake:
            return "They are likely to be jealous and suspicious. They should be cautious about what they discuss with others, as it might cause them to lose friendship and opportunities. They tend to overdo things. They prefer to rely on themselves and have doubts about other people's judgment. They are courteous  with polite manners, but they can be headstrong. They are fickle and usually have problems in relationships or marriage problems."
        case .Horse:
            return "Loving spending is their problem, for they need a great amount of money to support social activities and decent dressing. Besides, frankness allows them to let out secret easily. Persistence is what they lack on the path leading to success."
        case .Goat:
            return "indecisive, timid, vain, pessimistic, moody, weak-willed"
        case .Monkey:
            return "They are probably to be successful but they are sometimes agreeable. If they can get into something immediately, they will be discouraged. Their shortcomings on the characteristics are jealous, suspicious, cunning, selfish and arrogant sometimes. They tend to look down upon others. If they are not impatient and mouthy, they can gain more achievement."
        case .Rooster:
            return "They might be enthusiastic about something quickly, but soon might be impassive. They are often a bit eccentric and have difficulty relating with others. They are critical and think they are always right. Like their fortunes, their emotions swing from very high very slow. They can be positive but selfish, caustic and too outspoken. They are narrow-minded and vain. They probably refuse suggestions but would like to lecture others. If they can overcome their arrogance being sincerely in speaking, they will make more progress. "
        case .Dog:
            return "Most women under this sign are appealing but lack stability. They can be cold emotionally and sometimes distant at parties. They can find fault with many things and are noted for their sharp tongues. Their characteristics are irritable and usually bothered by unwarranted anxiety. They sometimes try to flaunt and be brave. They are likely to be an armchair theorist deficient in practical experience."
        case .Pig:
            return "Shortcomings on their characteristics are trusting and sometimes naïve, so they may easily fall in traps. Although they are loyal to friends, they do not have many friends. They are hot-tempered and impulsive. They are not good at communicating with others. If they play pranks on people, they will not know when to stop"

        }
    }

    /**
    The lucky colors for the Animal type

    :returns: the String telling the lucky colors for the animal type
    */
    public func luckyColors()-> String {
        switch self {
        case .Rat:
            return "blue, golden, green"
        case .Ox:
            return "blue, red, purple"
        case .Tiger:
            return "blue, grey, white, orange"
        case .Rabbit:
            return "red, pink, purple, blue"
        case .Dragon:
            return "golden, silver, hoary"
        case .Snake:
            return "red, light yellow, black"
        case .Horse:
            return "brown, yellow, purple"
        case .Goat:
            return "green, red, purple"
        case .Monkey:
            return "white, golden, blue"
        case .Rooster:
            return "golden, brown, brownish yellow, yellow"
        case .Dog:
            return "green, red, purple"
        case .Pig:
            return "yellow, grey, brown, golden"
        }
    }
}


/**
Enum for the Zodiac symbol

*/
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
    public func name() -> String {
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


extension NSDate {

    /**
    Instance method that returns the Zodiac sign for the NSDate that it is called on.

    :returns: The Zodiac symbol associated to the NSDate object
    */
    func zodiacSign()-> Zodiac {
        let dates = ["March 20", "April 19", "May 20", "June 20", "July 22", "August 22", "September 23", "October 22", "November 21", "December 21", "January 19", "February 18"]
        for i in 0...11{
            let date = NSDate(aString: dates[i])
            let second = i < 11 ? dates[i + 1] : dates[0] as String
            let sD = NSDate(aString: second)
            let d = NSDate(anDate: self)
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
   private func chineseZodiacAnimal()-> Animal {
        let startS = "1924"
        let f = NSDateFormatter()
        f.dateFormat = "yyyy"
        let s = f.dateFromString(startS)
        let d = NSDate(adate: self)
        let interv = d.timeIntervalSinceDate(s!)
        let y = Int(interv / 60 / 60 / 24 / 365)
        return Animal(rawValue: y % 12)!
    }

    /**
    Compares if a NSDate object is between two other dates.

    :param: firstDate  The earlier date to check if the NSDate is after this date.
    :param: secondDate The later date to see if the NSDate object is before this date

    :returns: Boolean value to tell whether the date being evaluated is between the two other dates
    */
    public func checkIfDateIsBetween(#firstDate: NSDate, secondDate: NSDate)-> Bool {
        let first = NSDate(date: firstDate)
        let second = NSDate(date: secondDate)
        let d = NSDate(date: self)
        if d.compare(first) == .OrderedDescending && d.compare(second) == .OrderedAscending {
            return true
        }

        return false
    }

    /**
    Instance method to format a NSDate into a MM/dd/yyyy format

    :returns: String showing date formatted to MM/dd/yyyy
    */
    public func stringMMddyyyyFormat()-> String {
        let f = NSDateFormatter()
        f.dateFormat = "MM/dd/yyyy"
        return f.stringFromDate(self)
    }

    /**
    Instance method to format a NSDate into MMMM dd, yyyy format

    :returns: String with date formatted as MMMM dd, yyyy
    */
    public func stringMMMMddyyyyFormat()-> String {
        let f = NSDateFormatter()
        f.dateFormat = "MMMM dd, yyyy"
        return f.stringFromDate(self)
    }

    private convenience init(date: NSDate) {
        let f = NSDateFormatter()
        f.dateFormat = "MM dd yyyy"
        let s = f.stringFromDate(date)
        let d = f.dateFromString(s)!
        self.init(timeInterval: 0, sinceDate: d)
    }

    private convenience init(anDate: NSDate) {
        let formatter = NSDateFormatter()
        formatter.dateFormat = "MMM d"
        let string = formatter.stringFromDate(anDate)
        let date = formatter.dateFromString(string)
        self.init(timeInterval: 0, sinceDate:date!)
    }

    convenience init(adate: NSDate) {
        let formatter = NSDateFormatter()
        formatter.dateFormat = "yyyy"
        let s = formatter.stringFromDate(adate)
        let date = formatter.dateFromString(s)
        self.init(timeInterval: 0, sinceDate:date!)
    }

    private convenience init(aString: String) {
        let formatter = NSDateFormatter()
        formatter.dateFormat = "MMM d"
        let date = formatter.dateFromString(aString)
        self.init(timeInterval: 0, sinceDate:date!)
    }

    convenience init(string: String) {
        let f = NSDateFormatter()
        f.dateFormat = "MMM dd yyyy"
        let d = f.dateFromString(string)
        self.init(timeInterval: 0, sinceDate:d!)
    }
}


//Examples of the methods working:

let date = NSDate()
let animal = date.chineseZodiacAnimal()
animal.name()
animal.strengths()
animal.weaknesses()
animal.luckyColors()


let zodiac = date.zodiacSign()
zodiac.name()
zodiac.strengths()
zodiac.weaknesses()

let one = NSDate(string: "January 20 2015")
let two = NSDate(string: "June 30 2199")

let b = date.checkIfDateIsBetween(firstDate: one, secondDate: two)

let c = date.checkIfDateIsBetween(firstDate: two, secondDate: one)

let s = date.stringMMddyyyyFormat()

let s2 = date.stringMMMMddyyyyFormat()
