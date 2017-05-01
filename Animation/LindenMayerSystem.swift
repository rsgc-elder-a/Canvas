import Foundation


public class LindenMayerSystem  {
    
    //properties (avaible everywhere inside the class)
    
    // Set up required information
    public var initialLength : Int           // initial line segment length
    public var reduction : Int               // reduction factor
    public var x : Int                       // initial horizontal position of turtle
    public var y : Int                       // initial vertical position of turtle
    public var direction : Int               // initial direction turtle faces (degrees)
    public var angle : Degrees               // rotation amount for turtle (degrees)
    public var axiom : String 
    public var rule : String
    public var n : Int                  // number of times the production rule is applied
    
    var currentLength : Int   // current line segment length
    var word : String            // word begins as equal to the axiom
    
    var hue : Float
    var saturation : Float
    var brightness : Float
    
    //initializer(S)(runs once at start)
    
    public init(legnth : Int, reduction : Int, x: Int, y: Int, direction : Int, angle: Degrees, axiom : String, rule:String, generations: Int, hue : Float, saturation : Float, brightness: Float){
        initialLength = legnth
        currentLength = initialLength
        self.reduction = reduction
        self.x = x
        self.y = y
        self.direction = direction
        self.angle = angle
        self.axiom = axiom
        self.rule = rule
        self.n = generations
        self.word = axiom
        self.hue = hue
        self.saturation = saturation
        self.brightness = brightness
        
        
        makeWord()
        
    }
    //methods (all in intiailizer irrelivant)
    func makeWord(){
        // intial test
        if n > 0 {
            // Create n generaitons
            for generation in 1...n {
                // Create a new word
                var newWord = ""
                // Inspect each character of existing word
                for character in word.characters {
                    //these blocks add in values
                    if character == "F" {
                        // apply production rule, replace "old" F with new string
                        newWord.append(rule)
                        
                    } else {
                        // just copy what's in the existing word to the new word
                        newWord.append(character)
                        
                    }
                }
                // Replace the existing word with the new word
                word = newWord //thisx was missing my code that looped over
            }
        }
        
        print("Here is the word: \(word)") //correct word
    }

}
