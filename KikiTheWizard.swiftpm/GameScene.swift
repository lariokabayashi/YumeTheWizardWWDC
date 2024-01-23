//
//  GameController.swift
//  KikiTheWizard
//
//  Created by Larissa Okabayashi on 22/01/24.
//

import Foundation
import SpriteKit

class GameScene: SKScene {
    var background: SKSpriteNode = SKSpriteNode(imageNamed: "background")
    
    let animationIdle: [SKTexture] = [
        SKTexture(imageNamed: "cloud1"),
        SKTexture(imageNamed: "cloud2"),
        SKTexture(imageNamed: "cloud3"),
        SKTexture(imageNamed: "cloud4"),
        SKTexture(imageNamed: "cloud5"),
        SKTexture(imageNamed: "cloud6"),
        SKTexture(imageNamed: "cloud7"),
        SKTexture(imageNamed: "cloud8")
    ]
    override func didMove(to view: SKView) {
        addChild(background)
//        clouds.position = CGPoint(x: view.frame.width / 2, y: view.frame.height / 2)
//        addChild(clouds)
        
        background.run(.repeatForever(.animate(with: animationIdle, timePerFrame: 0.5)))
        
//        physicsBody = SKPhysicsBody(edgeLoopFrom: frame)
    }

//    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//        guard let touch = touches.first else { return }
//        let location = touch.location(in: self)
//        let box = SKSpriteNode(color: .red, size: CGSize(width: 50, height: 50))
//        box.position = location
//        box.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width: 50, height: 50))
//        addChild(box)
//    }
}
