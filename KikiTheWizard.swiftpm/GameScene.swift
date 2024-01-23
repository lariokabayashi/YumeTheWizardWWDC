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
//    var background: SKSpriteNode?
    
    let wallpaper: SKSpriteNode = SKSpriteNode(imageNamed: "background")
    
    let ground: SKSpriteNode = SKSpriteNode(imageNamed: "ground")
    
    let kiki: SKSpriteNode = SKSpriteNode(imageNamed: "kiki")
    
    let board: SKSpriteNode = SKSpriteNode(imageNamed: "board")
    
    let arrow: SKSpriteNode = SKSpriteNode(imageNamed: "arrow")
    
    var topText = SKLabelNode(fontNamed: "PixelifySans-VariableFont_wght")
    
    let animationIdle: [SKTexture] = [
        SKTexture(imageNamed: "cloud 1"),
        SKTexture(imageNamed: "cloud 2"),
        SKTexture(imageNamed: "cloud 3"),
        SKTexture(imageNamed: "cloud 4"),
        SKTexture(imageNamed: "cloud 5"),
        SKTexture(imageNamed: "cloud 6"),
        SKTexture(imageNamed: "cloud 7"),
        SKTexture(imageNamed: "cloud 8")
    ]
    override func didMove(to view: SKView) {
        wallpaper.position = CGPoint(x: view.frame.width / 2, y: view.frame.height / 2)
        
        addChild(wallpaper)
        
        background.position = CGPoint(x: view.frame.width / 2, y: view.frame.height / 2)
        addChild(background)
        
        background.run(.repeatForever(.animate(with: animationIdle, timePerFrame: 0.5)))
        
        ground.size = CGSize(width: 1000, height: 1000)
        
        ground.position = CGPoint(x: view.frame.width / 2, y: 160)
        
        addChild(ground)
        
//        kiki.size = CGSize(width: 1000, height: 1000)
        
        kiki.position = CGPoint(x: view.frame.width / 2, y: view.frame.height / 2)
        
        addChild(kiki)
        
        board.position = CGPoint(x: view.frame.width / 2, y: 720)
        
        addChild(board)
        
        arrow.position = CGPoint(x: 1020, y: 700)
        
        addChild(arrow)
        
        topText.text = "Oi, meu nome é kiki, sou uma feiticeira aprendiz"
        topText.fontSize = 30
        topText.position = CGPoint(x: 580, y: 710)
        topText.fontColor = UIColor.black
        addChild(topText)
        
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
