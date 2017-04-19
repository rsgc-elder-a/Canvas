/*:
 
 # Canvas
 
 The Canvas class provides methods that allow basic shapes to be drawn on a Cartesian plane.
 
 - callout(Experiment):
 
    Uncomment line 27 so that the axes of the plane are automatically drawn.
 
    Where is the origin?
 
    In what direction do values on the *x* and *y* axes increase?
 
 */
// These are some required statements to make this playground work.
import Cocoa
import PlaygroundSupport

// Create a new canvas
let canvas = Canvas(width: 500, height: 500)

// View the current state of the canvas
canvas

// Draw the axes
canvas.drawAxes()

// Add code below...
let f = 100
let angle = Degrees(60)
let word = "F-F++F-F++F-F++F-F++F-F++F-F"
let smallWord = "F++F++F"
var xVal = f //starting values
var yVal = f
for i in smallWord.characters {
    //must use xVal and yVal to be actual values
    if(i == "F"){
        canvas.translate(byX: xVal, byY: yVal)
        canvas.drawLine(fromX: 0, fromY: 0, toX: f, toY: 0)
        xVal = xVal + f
        canvas.translate(byX: xVal+f, byY: yVal)

    }
    
    if(i == "-"){
        //canvas.translate(byX: xVal, byY: yVal)
        canvas.rotate(by: -angle)
        //canvas.translate(byX: -xVal, byY: -yVal)
        
    }
    
    if(i == "+"){
        //canvas.translate(byX: xVal, byY: yVal)
        canvas.rotate(by: angle)
        //canvas.translate(byX: -xVal, byY: -yVal)
        
        
    }
 
}

/*
canvas.drawLine(fromX: f, fromY: f, toX: f+100, toY: f)
canvas.translate(byX: f+100, byY: f)
canvas.rotate(by: -angle)
canvas.drawLine(fromX: 0, fromY: 0, toX: f, toY: 0)
*/
/*:
 
 ## To see output
 
 To see output, ensure that you have enabled the Assistant Editor...
 
 ![assistant-editor](assistant-editor.png "Enable the Assistant Editor")
 
 ... and verify that you have selected the *Timeline* option:
 
 ![timeline-option](timeline-option.png "Show the timeline")
 
 Finally, do not remove the following line of code:

 */
PlaygroundPage.current.liveView = canvas.imageView
