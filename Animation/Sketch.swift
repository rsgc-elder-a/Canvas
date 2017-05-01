//
//  Sketch.swift
//  Animation
//
//  Created by Russell Gordon on 2015-12-05.
//  Copyright © 2015 Royal St. George's College. All rights reserved.
//

import Foundation

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    // Create a new canvas
    //let canvas = EnhancedCanvas(width: 600, height: 600)
    
    let canvas : EnhancedCanvas
    
    //for reducing the size
    //currentLegnth = Int(Double(initialLegnth) / pow(Double(reduction), Double(n)))
    
    
    let triangle = LindenMayerSystem(legnth: 300, reduction: 2, x: 100, y: 350, direction: 0, angle: 120, axiom: "F+F+F", rule: "F+F-F-F+F", generations: 3, hue : 220.0, saturation: 100.0, brightness :  100.0)
    
    let koch2 = LindenMayerSystem(legnth: 200, reduction: 3, x: 400, y: 400, direction: 0, angle: 90, axiom: "-F", rule: "F+F-F-F+F", generations: 3, hue : 300.0, saturation: 100.0, brightness :  100.0)
    
    let koch1 = LindenMayerSystem(legnth: 200, reduction: 3, x: 270, y: 320, direction: 0, angle: 90, axiom: "F-F-F-F", rule: "FF-F-F-F-F-F+F ", generations: 3, hue : 0, saturation: 100.0, brightness :  100.0)
    
    // This runs once, equivalent to setup() in Processing
    override init() {
        
        // Create canvas object – specify size
        canvas = EnhancedCanvas(width: 600, height: 600)
        
        // The frame rate can be adjusted; the default is 60 fps
        canvas.framesPerSecond = 1
        
        // Translate up to middle of canvas
//        canvas.translate(byX: 0, byY: canvas.height / 2)
        
    }
    
    // Runs repeatedly, equivalent to draw() in Processing
    func draw() {
        canvas.render(systemGive: triangle)
        canvas.render(systemGive: koch2)
        canvas.render(systemGive: koch1)
    }
    
    // Respond to the mouseDown event
    func mouseDown() {
        
        
    }

}
