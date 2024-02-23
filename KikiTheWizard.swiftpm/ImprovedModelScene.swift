//
//  ImprovedModelScene.swift
//  KikiTheWizard
//
//  Created by Larissa Okabayashi on 15/02/24.
//
import Foundation
import SpriteKit

@available(iOS 17.0, *)
class ImprovedModelScene: SKScene{
    var background: SKSpriteNode = SKSpriteNode(imageNamed: "background")
    
    let wallpaper: SKSpriteNode = SKSpriteNode(imageNamed: "background")
    
    let ground: SKSpriteNode = SKSpriteNode(imageNamed: "ground")
    
    let kiki: SKSpriteNode = SKSpriteNode(imageNamed: "feitiço-1")
    
    let board: SKSpriteNode = SKSpriteNode(imageNamed: "board")
    
    let arrow: SKSpriteNode = SKSpriteNode(imageNamed: "arrow")
    
    let box: SKSpriteNode = SKSpriteNode(imageNamed: "box-close")
    
    let topText = SKLabelNode(fontNamed: "Pixelify Sans")
    
    var page: Int = 0

    let sparkles: SKSpriteNode = SKSpriteNode(imageNamed: "image 109")
    
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
    let animationIdleBox: [SKTexture] = [
        SKTexture(imageNamed: "box-close"),
        SKTexture(imageNamed: "báu")
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
        wallpaper.size = CGSize(width: 20000, height: 20000)
        addChild(wallpaper)
        
        background.position = CGPoint(x: view.frame.width / 2, y: view.frame.height / 2)
        addChild(background)
        
        background.run(.repeatForever(.animate(with: animationIdle, timePerFrame: 0.5)))
        
        ground.size = CGSize(width: 1000, height: 1000)
        ground.position = CGPoint(x: 597, y: 160)
        addChild(ground)
        
        kiki.position = CGPoint(x: 620, y: 370)
        addChild(kiki)
        
        box.position = CGPoint(x: view.frame.width / 2.4, y: view.frame.height / 5.2)
        box.zPosition = 5
        addChild(box)
        
        
        board.position = CGPoint(x: view.frame.width / 2, y: view.frame.height/1.15)
        addChild(board)
        board.zPosition = 2
        
        arrow.position = CGPoint(x: view.frame.width/1.17, y: view.frame.height/1.1424)
        addChild(arrow)
        arrow.name = "arrow"
        arrow.zPosition = 11

        sparkles.position = CGPoint(x: view.frame.width / 2, y: view.frame.height / 4.5)
        sparkles.zPosition = -1
        addChild(sparkles)
        
        topText.fontSize = 30
        topText.position = CGPoint(x: view.frame.width/2, y: view.frame.height/1.17)
        topText.fontColor = UIColor.black
        topText.horizontalAlignmentMode = SKLabelHorizontalAlignmentMode.center
        topText.verticalAlignmentMode = SKLabelVerticalAlignmentMode.center
        topText.preferredMaxLayoutWidth = 800
        topText.numberOfLines = 3
        addChild(topText)
        topText.text = "Nice! the box has been improved, now let's test it"
        topText.zPosition = 2
        
        box.position = CGPoint(x: 597, y: 217)
        box.size = CGSize(width: 200, height: 200)
        box.run(.animate(with: animationIdleBox, timePerFrame: 1))
        
        kiki.run(.animate(with: animationIdleMagic, timePerFrame: 0.5))
        kiki.zPosition = 5
       
        sparkles.zPosition = 1
        sparkles.run(.animate(with: animationIdleSparkles, timePerFrame: 0.3))
        SoundMagic()
        
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
                SoundEnter()
                if page == 0{
                    topText.text = "Choose any cat or dog from the pixel world or the real world to test if the spell works."
                    page += 1
                }
                else if page == 1{
                    let nextScene = buildYourAnimalScene()
                    nextScene.size = CGSize(width: nextScene.size.width, height: nextScene.size.height)
                    nextScene.scaleMode = .resizeFill
                    view?.presentScene(nextScene)
                }
            }
        }
    }
    func SoundMagic(){
        let audioNode = SKAudioNode(fileNamed: "media/magic")
        audioNode.autoplayLooped = false
        self.addChild(audioNode)
        let playAction = SKAction.play()
        audioNode.run(playAction)
    }
    func SoundEnter(){
        let audioNode = SKAudioNode(fileNamed: "media/enter")
        audioNode.autoplayLooped = false
        self.addChild(audioNode)
        let playAction = SKAction.play()
        audioNode.run(playAction)
    }
}

