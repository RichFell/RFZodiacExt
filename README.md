# RFZodiacExt
Extensions on NSDate to return the Zodiac symbol for a date, also to return the chinese year animal. Includes a playground file, that has examples for how to call the methods, as well as allows for you to test out different ways of using the methods.

Methods:

 func zodiacSign()-> Zodiac
 
Instance method that can be called on a NSDate object, to return the Zodiac enumerated type for the date.

func chineseZodiacAnimal()-> Animal

Instance method that can be called on a NSDate object, to return the Animal enumerated type for the date.

func checkIfDateIsBetween(#firstDate: NSDate, secondDate: NSDate)-> Bool

Instance method that can be called on a NSDate object, to return a boolean for is the date is between two other dates


convenience init(string: String)

Convenience initializer that is best to use when trying to do a comparison. Ensures that the date is entered into the correct format in order to evaluate the NSDate objects. Required format to evaluate is "MMM dd yyyy"


Enums:

The purpose of the enums used was to be able to pass out the most information, in a easy to access fashion. Each enum stores multiple sets of information pertain to the type.

Animal :

The Animal enum has 12 types, each one to represent the Chinese year animals. The enum has a string method, which returns the String telling the name of the Animal. Also has a strengths method, which will return a String, that lists the strengths for the Animal. A weaknesses method, that returns a String listing of the personality weakness for the Animal. As well as a method called luckyColors, that returns a String listing of the lucky colors for the Animal.
All of the information used for the Animal type was found at: 
http://www.travelchinaguide.com/intro/social_customs/zodiac/


Zodiac:

The Zodiac enum has 12 types, each one representing the zodiac symbol for the associated date. This enum has a name method that returns a string representation of the name of the zodiac symbol. Also has a strengths method, which returns the String listing of the strengths of the Zodiac type. As well as a weaknesses method, which returns the String listing of the weaknesses of the Zodiac type.

All of the information used for the Zodiac type was found at:
http://neurolove.me/post/29034134717/zodiac-signs-strengths-and-weaknesses

