/*:
 [Previous](@previous) / [Next](@next)
 
 # Sequence
 
 Some new shape types and options have been added to the Canvas class.
 
 Use this new functionality, and your [knowledge of colour](http://russellgordon.ca/rsgc/2016-17/ics2o/HSB_Colour_Model_-_Summary_-_Swift_3.pdf), to reproduce this abstract version of the eBay logo:
 
 ![new_ebay_logo.png](new_ebay_logo.jpg "Overlapping Shapes Logo")
 
 Color and alpha (transparency) matter.
 
 Try reproducing this image for practice.
 
 ## Remember
 
 Commit your work as you make progress on this page.
 
 ## Note
 
 The following two statements are required to make the playground run. Please do not remove.
 */
import Cocoa
import PlaygroundSupport

// Create canvas
let canvas = Canvas(width: 500, height: 400)

canvas.drawShapesWithBorders = false
//draw ellipse 
canvas.fillColor = Color.red
canvas.drawEllipse(centreX: 120, centreY: 120, width: 150, height: 150)

// draw rounded rectangle
canvas.fillColor = Color.init(hue: 47, saturation: 100, brightness: 100, alpha: 100)
canvas.drawRoundedRectangle(centreX: 320, centreY: 160, width: 120, height: 140)
//draw rectangle
canvas.fillColor = Color.init(hue: 225, saturation: 100, brightness: 100, alpha: 90)
canvas.drawRectangle(bottomLeftX: 170, bottomLeftY: 20, width: 120, height: 300)
//draw a triangle
canvas.fillColor = Color.init(hue: 127, saturation: 100, brightness: 100, alpha: 80)
var points : [NSPoint] = []
points.append( NSPoint(x:410,y:50))
points.append( NSPoint(x:340,y:250))
points.append( NSPoint(x:490,y:250))

canvas.drawCustomShape(with: points)
/*:
// ## Template code
// The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
// */
PlaygroundPage.current.liveView = canvas.imageView
