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
    
    let kiki: SKSpriteNode = SKSpriteNode(imageNamed: "kiki")
    
    let board: SKSpriteNode = SKSpriteNode(imageNamed: "board")
    
    let arrow: SKSpriteNode = SKSpriteNode(imageNamed: "arrow")
    
    let topText: SKLabelNode = SKLabelNode(fontNamed: "Pixelify Sans")
    
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
    
    override func didMove(to view: SKView) {
        
        wallpaper.position = CGPoint(x: view.frame.width / 2, y: view.frame.height / 2)
        addChild(wallpaper)
        
        background.position = CGPoint(x: view.frame.width / 2, y: view.frame.height / 2)
        addChild(background)
        
        background.run(.repeatForever(.animate(with: animationIdle, timePerFrame: 0.5)))
        
        ground.size = CGSize(width: 1000, height: 1000)
        ground.position = CGPoint(x: view.frame.width / 2, y: 160)
        addChild(ground)


        kiki.position = CGPoint(x: view.frame.width / 2, y: view.frame.height / 2)
        addChild(kiki)
        
        board.position = CGPoint(x: view.frame.width / 2, y: 720)
        addChild(board)
        
        arrow.position = CGPoint(x: 1020, y: 700)
        arrow.name = "arrow"
        addChild(arrow)
        
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
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
         for touch in touches {
              let location = touch.location(in: self)
              let touchedNode = atPoint(location)
              if touchedNode.name == "arrow" {
                  if page == 0{
                      topText.text = "I'm learning a spell that can guess what's inside a closed box."
                      topText.position = CGPoint(x: 580, y: 720)
                      page += 1
                  }
                  else if page == 1{
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
         }
    }
}
