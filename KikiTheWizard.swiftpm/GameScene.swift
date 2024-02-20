//
//  GameController.swift
//  KikiTheWizard
//
//  Created by Larissa Okabayashi on 22/01/24.
//

import Foundation
import SpriteKit
import SwiftUI
import Metal

@available(iOS 17.0, *)
class GameScene: SKScene {
    
    var background: SKSpriteNode = SKSpriteNode(imageNamed: "background")
    
    let wallpaper: SKSpriteNode = SKSpriteNode(imageNamed: "background")
    
    let ground: SKSpriteNode = SKSpriteNode(imageNamed: "ground")
    let ground2: SKSpriteNode = SKSpriteNode(imageNamed: "image 46")
    
    let kiki: SKSpriteNode = SKSpriteNode(imageNamed: "image 311")
    
    let board: SKSpriteNode = SKSpriteNode(imageNamed: "board")
    
    let arrow: SKSpriteNode = SKSpriteNode(imageNamed: "arrow")
    
    let topText: SKLabelNode = SKLabelNode(fontNamed: "Pixelify Sans")
    let buttonText: SKLabelNode = SKLabelNode(fontNamed: "Pixelify Sans")
    
    var page: Int = 0
    
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
    
    let box: SKSpriteNode = SKSpriteNode(imageNamed: "box-close")
    
    let bee: SKSpriteNode = SKSpriteNode(imageNamed: "image 302")
    
    let animationIdleBee: [SKTexture] = [
        SKTexture(imageNamed: "image 302"),
        SKTexture(imageNamed: "image 303"),
        SKTexture(imageNamed: "image 304"),
        SKTexture(imageNamed: "image 305"),
        SKTexture(imageNamed: "image 306"),
        SKTexture(imageNamed: "image 307"),
        SKTexture(imageNamed: "image 308")
    ]
    
    let animationIdleFlowers: [SKTexture] = [
        SKTexture(imageNamed: "image 309"),
        SKTexture(imageNamed: "image 310")
    ]
    
    let animationIdleKiki: [SKTexture] = [
        SKTexture(imageNamed: "image 311"),
        SKTexture(imageNamed: "image 312"),
        SKTexture(imageNamed: "image 313"),
        SKTexture(imageNamed: "image 314")
    ]
    
    let tree: SKSpriteNode = SKSpriteNode(imageNamed: "tree")
    let flowers: SKSpriteNode = SKSpriteNode(imageNamed: "image 309")
    let button1: SKSpriteNode = SKSpriteNode(imageNamed: "buttonInicial")
    
    override func didMove(to view: SKView) {
        
        wallpaper.position = CGPoint(x: view.frame.width / 2, y: view.frame.height / 2)
        addChild(wallpaper)
        
        background.position = CGPoint(x: view.frame.width / 2, y: view.frame.height / 2)
        addChild(background)
        
        background.run(.repeatForever(.animate(with: animationIdle, timePerFrame: 0.5)))
        
        ground.size = CGSize(width: 1000, height: 1000)
        ground.position = CGPoint(x: view.frame.width / 2, y: 160)
        addChild(ground)
        ground.zPosition = -1

        ground2.position = CGPoint(x: view.frame.width / 2, y: 220)
        addChild(ground2)
        
        kiki.position = CGPoint(x: 620, y: 200)
        addChild(kiki)
        kiki.run(.repeatForever(.animate(with: animationIdleKiki, timePerFrame: 0.5)))
        
        board.position = CGPoint(x: view.frame.width / 2, y: 720)
        addChild(board)
        board.zPosition = -1
        
        arrow.position = CGPoint(x: 1020, y: 700)
        arrow.name = "arrow"
        addChild(arrow)
        arrow.zPosition = -1
        
        button1.position = CGPoint(x: view.frame.width/2, y: 550)
        addChild(button1)
        button1.name = "button1"
    
        topText.text = "Hi, my name is Kiki, I'm an apprentice wizard"
        topText.fontSize = 30
        topText.position = CGPoint(x: 580, y: 720)
        topText.fontColor = UIColor.black
        topText.horizontalAlignmentMode = SKLabelHorizontalAlignmentMode.center
        topText.verticalAlignmentMode = SKLabelVerticalAlignmentMode.center
        topText.lineBreakMode = NSLineBreakMode.byWordWrapping
        topText.preferredMaxLayoutWidth = 900
        topText.numberOfLines = 3
        addChild(topText)
        topText.zPosition = -1
        
        tree.position = CGPoint(x: 250, y: 500)
        addChild(tree)
        tree.position = CGPoint(x: 200, y: 250)
        
        bee.position = CGPoint(x: 350, y: 400)
        addChild(bee)
        bee.run(.repeatForever(.animate(with: animationIdleBee, timePerFrame: 0.3)))
        bee.position = CGPoint(x: 350, y: 200)
        
        flowers.position = CGPoint(x: 950, y: 400)
        addChild(flowers)
        flowers.run(.repeatForever(.animate(with: animationIdleFlowers, timePerFrame: 0.3)))
        flowers.position = CGPoint(x: 1050, y: 180)
        
        box.position = CGPoint(x: view.frame.width/2, y: view.frame.height / 5.2)
        addChild(box)
        box.zPosition = -1
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
         for touch in touches {
              let location = touch.location(in: self)
              let touchedNode = atPoint(location)
              if touchedNode.name == "arrow" {
                  if page == 1{
                      topText.text = "Currently, I'm practicing a spell with a very easy example, just to predict if there's a cat or a dog inside the box."
                      topText.position = CGPoint(x: 580, y: 720)
                      page += 1
                  }
                  else if page == 2{
                      topText.text = "However, I'm having difficulty executing it because it often fails.I'll show you."
                      topText.position = CGPoint(x: 580, y: 720)
                      page += 1
                  }
                  else if page == 3{
                      topText.text = "First, let's collect data on cats and dogs."
                      topText.position = CGPoint(x: 580, y: 720)
                      page += 1
                  }
                  else if page == 4{
                      let nextScene = InventoryBiasScene()
                      nextScene.size = CGSize(width: 1194, height: 834)
                      nextScene.scaleMode = .aspectFill
                      view?.presentScene(nextScene)
                  }
              }
             else if touchedNode.name == "button1"{
                 kiki.position = CGPoint(x: 620, y: 400)
                 bee.position = CGPoint(x: 350, y: 400)
                 flowers.position = CGPoint(x: 950, y: 400)
                 tree.position = CGPoint(x: 250, y: 500)
                 ground.zPosition = 0
                 box.zPosition = 0
                 board.zPosition = 0
                 arrow.zPosition = 0
                 topText.text = "I'm learning a spell that can guess what's inside a closed box."
                 topText.position = CGPoint(x: 580, y: 720)
                 ground2.zPosition = -1
                 button1.zPosition = -1
                 topText.zPosition = 0
                 page += 1
             }
         }
    }
}
