//
//  GameScene.swift
//  Speedy
//
//  Created by Tyler Levine on 1/27/15.
//  Copyright (c) 2015 Krishna Kolli. All rights reserved.
//

import SpriteKit

class GameScene : SKScene {
    //TODO: Put constant numbers in CAPS
    let canvasHeight: UInt32 = 800 //CHANGE MAGIC NUMBER
    let canvasWidth:UInt32 = 800   //CHANGE MAGIC NUMBER
    let leftColumn:CGFloat = 50    //CHANGE MAGIC NUMBER
    let middleColumn:CGFloat = 190   //CHANGE MAGIC NUMBER
    let rightColumn:CGFloat = 325   //CHANGE MAGIC NUMBER
    let startHeight:CGFloat = 600   //CHANGE MAGIC NUMBER
    
    let Size = CGSize(width:24, height:30)           /*Code for GridLayout*/
    let GridSpacing = CGSize(width:120, height:20)
    let RowCount = 8
    let ColCount = 3
    
    var contentCreated = false
    
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
        drawSpeedy()
        if (!contentCreated) {
            createContent()
            contentCreated = true
            setupColumns()
        }
    }
    
    func createContent() {
        self.backgroundColor = SKColor.lightGrayColor()
    }
    
    func drawSpeedy(){
        //Draw Column1
        let myLabel = SKLabelNode(fontNamed:"Chalkduster")
        myLabel.text = "Number";
        myLabel.fontSize = 18;
        myLabel.position = CGPoint(x:leftColumn, y:startHeight);
        self.addChild(myLabel)
        
        //Draw Column2
        let myLabel2 = SKLabelNode(fontNamed:"Chalkduster")
        myLabel2.text = "Operator";
        myLabel2.fontSize = 18;
        myLabel2.position = CGPoint(x:middleColumn, y:startHeight);
        self.addChild(myLabel2)
        
        //Draw Column3
        let myLabel3 = SKLabelNode(fontNamed:"Chalkduster")
        myLabel3.text = "Number";
        myLabel3.fontSize = 18;
        myLabel3.position = CGPoint(x:rightColumn, y:startHeight);
        self.addChild(myLabel3)
    }
    
    func setupColumns() {
        
        // 1
        let baseOrigin = CGPoint(x:leftColumn, y:startHeight - 530)  //Starting position to create Grid
        for var row = 1; row <= RowCount; row++ {

            
            // 3
            let PositionY = CGFloat(row) * (Size.height * 2) + baseOrigin.y
            var Position = CGPoint(x:baseOrigin.x, y:PositionY)
            
            // 4
            for var col = 1; col <= ColCount; col++ {
                
                let shape = SKShapeNode(circleOfRadius: 20)
                shape.strokeColor = UIColor(red: 255, green: 0, blue: 0, alpha: 0.5)
                shape.lineWidth = 4
                let text = SKLabelNode(text: String(3))
                // we set the font
                text.fontSize = 16.0
                // we nest the text label in our circle
                shape.addChild(text)
                
                // we set initial random positions
                shape.position = Position
                // we add each circle to the display list
                self.addChild(shape)
                
                
                
                Position = CGPoint(x: Position.x + Size.width + GridSpacing.width, y: PositionY)
            }
        }
    }
    
    
    /*func createCircle(){
        let shape = SKShapeNode(circleOfRadius: 20)
        shape.strokeColor = UIColor(red: 255, green: 0, blue: 0, alpha: 0.5)
        shape.lineWidth = 4
        let text = SKLabelNode(text: String(3))
        text.color = UIColor.whiteColor()
        // we set the font
        text.fontSize = 6.0
        // we nest the text label in our circle
        shape.addChild(text)
        
        // we set initial random positions
        shape.position = CGPoint (x: CGFloat(arc4random()%(canvasWidth)), y: CGFloat(arc4random()%(canvasHeight)))
        // we add each circle to the display list
        self.addChild(shape)

    }*/
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        /* touch has begun */
        
    }
    
    override func update(currentTime: CFTimeInterval) {
        /* called before each frame is rendered */
    }
}
