import Foundation


public class EnhancedCanvas : Canvas {
    
    //methods
    public func render(systemGive: LindenMayerSystem) {
        
        // Create a new canvas
        //let canvas = Canvas(width: 500, height: 500)
        
        //for reducing the size
        let currentLegnth = Int( Double(systemGive.initialLength) / pow(Double(systemGive.reduction), Double(systemGive.n)))
        
        // Draw the axes
        
        self.drawAxes()
        // Change the line length
        //currentLength = Int( Double(initialLength) / pow(Double(reduction), Double(n)) )
        
        // Render the word
        self.saveState()
        self.translate(byX: systemGive.x, byY: systemGive.y) // Move turtle to starting point
        //self.lineColor.translatedHue.add(100.0)
        
        self.lineColor = Color(hue: systemGive.hue, saturation: systemGive.saturation, brightness: systemGive.saturation, alpha: 100)
        
        
        //self.lineColor.brightness.
        //self.lineColor
        for character in systemGive.word.characters {
            
            
            // Interpret each character of the word
            switch character {
                
                
            case "F":
                // draws line striat ahead
                self.drawLine(fromX: 0, fromY: 0, toX: currentLegnth, toY: 0)
                self.translate(byX: currentLegnth, byY: 0)
                
                
            case "+":
                //rotates positivly
                self.rotate(by: systemGive.angle)
                
                
            case "-":
                //roatates negitivy
                self.rotate(by: systemGive.angle * -1)
                
                
            default:
                
                break
            }
            
        }
        self.restoreState()
    }
}
