import Foundation

public class LindenMayerSystem {
    
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
    
    
    //initializer(S)
    
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
  
    }
    
    
    //methods
    
    
    
    
}
