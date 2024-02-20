//
//  MagicScene.swift
//  KikiTheWizard
//
//  Created by Larissa Okabayashi on 28/01/24.
//

import Foundation
import SpriteKit

@available(iOS 17.0, *)
class MagicScene: SKScene {
    var background: SKSpriteNode = SKSpriteNode(imageNamed: "background")
    
    let wallpaper: SKSpriteNode = SKSpriteNode(imageNamed: "background")
    
    let ground: SKSpriteNode = SKSpriteNode(imageNamed: "ground")
    
    let kiki: SKSpriteNode = SKSpriteNode(imageNamed: "feitiço-1")
    
    let board: SKSpriteNode = SKSpriteNode(imageNamed: "board")
    
    let arrow: SKSpriteNode = SKSpriteNode(imageNamed: "arrow")
    
    let box: SKSpriteNode = SKSpriteNode(imageNamed: "box-close")
    
    let sparkles: SKSpriteNode = SKSpriteNode(imageNamed: "image 109")
    
    let topText = SKLabelNode(fontNamed: "Pixelify Sans")
    
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
    
    let animationIdleMagic: [SKTexture] = [
        SKTexture(imageNamed: "feitiço-1"),
        SKTexture(imageNamed: "feitiço-2"),
        SKTexture(imageNamed: "feitiço-3"),
        SKTexture(imageNamed: "feitiço-4"),
        SKTexture(imageNamed: "feitiço-5")
    ]
    
    let animationIdleSparkles: [SKTexture] = [
        SKTexture(imageNamed: "image 109"),
        SKTexture(imageNamed: "image 110"),
        SKTexture(imageNamed: "image 111"),
        SKTexture(imageNamed: "image 112"),
        SKTexture(imageNamed: "image 113"),
        SKTexture(imageNamed: "image 114"),
        SKTexture(imageNamed: "image 115"),
        SKTexture(imageNamed: "image 116")
    ]
    
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
    
    override func didMove(to view: SKView) {
        
        wallpaper.position = CGPoint(x: view.frame.width / 2, y: view.frame.height / 2)
        addChild(wallpaper)
        
        background.position = CGPoint(x: view.frame.width / 2, y: view.frame.height / 2)
        addChild(background)
        
        background.run(.repeatForever(.animate(with: animationIdle, timePerFrame: 0.5)))
        
        ground.size = CGSize(width: 1000, height: 1000)
        ground.position = CGPoint(x: view.frame.width / 2, y: 160)
        addChild(ground)
        
        kiki.position = CGPoint(x: view.frame.width / 1.85, y: view.frame.height / 2.5)
        kiki.size = CGSize(width: 844, height: 844)
        addChild(kiki)
        
        
        sparkles.position = CGPoint(x: view.frame.width / 2, y: view.frame.height / 4.5)
        addChild(sparkles)
        
        box.position = CGPoint(x: view.frame.width / 2, y: view.frame.height / 5.2)
        addChild(box)
        
        
        board.position = CGPoint(x: view.frame.width / 2, y: 720)
        addChild(board)
        
        arrow.position = CGPoint(x: 1020, y: 700)
        arrow.name = "arrow"
        addChild(arrow)
        
        topText.text = "Very well, now we have everything prepared to perform the spell."
        topText.fontSize = 30
        topText.preferredMaxLayoutWidth = 900
        topText.numberOfLines = 2
        topText.position = CGPoint(x: 560, y: 680)
        topText.fontColor = UIColor.black
        addChild(topText)
        
        tree.position = CGPoint(x: 250, y: 500)
        addChild(tree)
        
        bee.position = CGPoint(x: 350, y: 400)
        addChild(bee)
        bee.run(.repeatForever(.animate(with: animationIdleBee, timePerFrame: 0.3)))
        
        flowers.position = CGPoint(x: 950, y: 400)
        addChild(flowers)
        flowers.run(.repeatForever(.animate(with: animationIdleFlowers, timePerFrame: 0.3)))
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            let location = touch.location(in: self)
            let touchedNode = atPoint(location)
            if touchedNode.name == "arrow" {
                SoundSparkles()
                board.zPosition = -1
                arrow.position = CGPoint(x: 1100, y: 400)
                topText.zPosition = -1
                kiki.run(.repeatForever(.animate(with: animationIdleMagic, timePerFrame: 0.5)))
                
                sparkles.run(.repeatForever(.animate(with: animationIdleSparkles, timePerFrame: 0.1)))
                
                page += 1
            }
            if page == 1 && touchedNode.name == "arrow"{
                let nextScene = TestModelScene()
                nextScene.size = CGSize(width: nextScene.size.width, height: nextScene.size.height)
                nextScene.scaleMode = .resizeFill
                view?.presentScene(nextScene)
            }
        }
    }
    func SoundSparkles(){
        let audioNode = SKAudioNode(fileNamed: "media/sparkles")
        audioNode.autoplayLooped = false
        self.addChild(audioNode)
        let playAction = SKAction.play()
        audioNode.run(playAction)
    }
}
    
