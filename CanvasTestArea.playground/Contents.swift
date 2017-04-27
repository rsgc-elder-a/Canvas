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
let canvas = EnhancedCanvas(width: 600, height: 600)

//for reducing the size
//currentLegnth = Int(Double(initialLegnth) / pow(Double(reduction), Double(n)))

// View the current state of the canvas
canvas

// Draw the axes
canvas.drawAxes()


let triangle = LindenMayerSystem(legnth: 300, reduction: 2, x: 100, y: 100, direction: 0, angle: 120, axiom: "F+F+F", rule: "F+F-F-F+F", generations: 6, hue : 220.0, saturation: 100.0, brightness :  100.0)

let island = LindenMayerSystem(legnth: 100, reduction: 3, x: 150, y: 550, direction: 0, angle: 90, axiom: "F-F-F-F", rule: "F-F+F+FF-F-F+F", generations: 3, hue : 200.0, saturation: 100.0, brightness :  100.0)

let koch2 = LindenMayerSystem(legnth: 200, reduction: 3, x: 400, y: 400, direction: 0, angle: 90, axiom: "-F", rule: "F+F-F-F+F", generations: 3, hue : 300.0, saturation: 100.0, brightness :  100.0)

let koch1 = LindenMayerSystem(legnth: 200, reduction: 3, x: 270, y: 320, direction: 0, angle: 90, axiom: "F-F-F-F", rule: "FF-F-F-F-F-F+F ", generations: 3, hue : 0, saturation: 100.0, brightness :  100.0)

canvas.render(systemGive: triangle)
/*
canvas.render(systemGive: koch1)
canvas.render(systemGive: koch2)
canvas.render(systemGive: island)
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
