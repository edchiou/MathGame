//
//  OperatorCircle.swift
//  Speedy
//
//  Created by Edward Chiou on 2/14/15.
//  Copyright (c) 2015 Krishna Kolli. All rights reserved.
//

import SpriteKit

class OperatorCircle: GameCircle{
    var op: Operator?
    
    convenience init(col: Int, operatorSymbol: Operator){
        self.init(col: col)
        setOperator(operatorSymbol)
        setLabel(operatorSymbol)
    }
    
    func setOperator(operatorSymbol: Operator){
        op = operatorSymbol
    }
    
    //TODO: apply image of operator to SKSpriteNode
    func setLabel(op: Operator){
        var label: SKLabelNode
        
        switch op{
        case .PLUS: label = SKLabelNode(text: "+")
        case .MINUS: label = SKLabelNode(text: "-")
        case .MULTIPLY: label = SKLabelNode(text: "*")
        case .DIVIDE: label = SKLabelNode(text: "/")
        default: label = SKLabelNode(text: "what")
        }
        
        label.fontSize = nodeTextFontSize
        label.verticalAlignmentMode = SKLabelVerticalAlignmentMode.Center
        label.horizontalAlignmentMode = SKLabelHorizontalAlignmentMode.Center
        parentNode!.addChild(label)
    }
}
