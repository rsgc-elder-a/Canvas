import Foundation


public class LindenMayerSystem  {
    
    //properties (avaible everywhere inside the class)
    
    // Set up required information
    var initialLength : Int             // initial line segment length
    
    var reduction : Int                   // reduction factor
    var x : Int                       // initial horizontal position of turtle
    var y : Int                      // initial vertical position of turtle
    var direction : Int                   // initial direction turtle faces (degrees)
    var angle : Degrees             // rotation amount for turtle (degrees)
    var axiom : String
    var rule : String
    var n : Int                  // number of times the production rule is applied
    
    var currentLength : Int   // current line segment length
    var word : String            // word begins as equal to the axiom
    
    
    //initializer(S)(runs once at start)
    
    public init(legnth : Int, reduction : Int, x: Int, y: Int, direction : Int, angle: Degrees, axiom : String, rule:String, generations: Int){
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
        
        // Create a new canvas
        let canvas = Canvas(width: 500, height: 500)
        
        //for reducing the size
        //currentLegnth = Int(Double(initialLegnth) / pow(Double(reduction), Double(n)))
        
        // Draw the axes
        canvas.drawAxes()

        
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
        
        // Change the line length
        currentLength = Int( Double(initialLength) / pow(Double(reduction), Double(n)) )
        
        // Render the word
        canvas.saveState()
        canvas.translate(byX: x, byY: y) // Move turtle to starting point
        for character in word.characters {
            
            
            // Interpret each character of the word
            switch character {
                
                
            case "F":
                // draws line striat ahead
                canvas.drawLine(fromX: 0, fromY: 0, toX: currentLength, toY: 0)
                canvas.translate(byX: currentLength, byY: 0)
                
                
            case "+":
                //rotates positivly
                canvas.rotate(by: angle)
                
                
            case "-":
                //roatates negitivy
                canvas.rotate(by: angle * -1)
                
                
            default:
                
                break
            }
            
        }
        canvas.restoreState()
        
    }
    //methods (all in intiailizer irrelivant)
}
