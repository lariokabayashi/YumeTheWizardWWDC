//
//  IncreaseDatasetScene.swift
//  KikiTheWizard
//
//  Created by Larissa Okabayashi on 15/02/24.
//

import Foundation
import SpriteKit
import SwiftUI

@available(iOS 17.0, *)
class IncreaseDatasetScene: SKScene {
    
    var background: SKSpriteNode = SKSpriteNode(imageNamed: "background")
    
    let wallpaper: SKSpriteNode = SKSpriteNode(imageNamed: "background")
    
    let board: SKSpriteNode = SKSpriteNode(imageNamed: "board")
    
    let arrow: SKSpriteNode = SKSpriteNode(imageNamed: "arrow")
    
    let tv: SKSpriteNode = SKSpriteNode(imageNamed: "Group 22")
    
    let tv2: SKSpriteNode = SKSpriteNode(imageNamed: "tvAlone")
    
    let screen: SKSpriteNode = SKSpriteNode(imageNamed: "screen")
    
    let topText: SKLabelNode = SKLabelNode(fontNamed: "Pixelify Sans")
    
    let cancel: SKLabelNode = SKLabelNode(fontNamed: "Pixelify Sans")
    let download: SKLabelNode = SKLabelNode(fontNamed: "Pixelify Sans")
    let catVsDogs: SKLabelNode = SKLabelNode(fontNamed: "Pixelify Sans")
    
    let kiki: SKSpriteNode = SKSpriteNode(imageNamed: "kiki-animation1")
    
    let downloading: SKSpriteNode = SKSpriteNode(imageNamed: "image 263")
    let downloading2: SKSpriteNode = SKSpriteNode(imageNamed: "image 264")
    let downloading3: SKSpriteNode = SKSpriteNode(imageNamed: "image 265")
    let downloading4: SKSpriteNode = SKSpriteNode(imageNamed: "image 266")
    let downloading5: SKSpriteNode = SKSpriteNode(imageNamed: "image 267")
    let downloading6: SKSpriteNode = SKSpriteNode(imageNamed: "image 268")
    let downloading7: SKSpriteNode = SKSpriteNode(imageNamed: "image 269")
    let downloading8: SKSpriteNode = SKSpriteNode(imageNamed: "image 270")

    var page: Int = 0
    
    var loading: Int = 0
    
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
    
    let animationIdleTv: [SKTexture] = [
        SKTexture(imageNamed: "Group 22"),
        SKTexture(imageNamed: "Group 23")
    ]
    
    let animationIdleKiki: [SKTexture] = [
        SKTexture(imageNamed: "kiki-animation1"),
        SKTexture(imageNamed: "kiki-animation2"),
        SKTexture(imageNamed: "kiki-animation3")
    ]
    
    var downloadingArray: [SKSpriteNode] = []
    
    override func didMove(to view: SKView) {
        downloadingArray = [downloading,downloading2,downloading3, downloading4, downloading5, downloading6, downloading7, downloading8]
        
        wallpaper.position = CGPoint(x: view.frame.width / 2, y: view.frame.height / 2)
        addChild(wallpaper)
        
        background.position = CGPoint(x: view.frame.width / 2, y: view.frame.height / 2)
        addChild(background)
        
        background.run(.repeatForever(.animate(with: animationIdle, timePerFrame: 0.5)))
    
        tv.position = CGPoint(x: view.frame.width / 2, y: view.frame.height / 2)
        addChild(tv)
        tv.run(.repeatForever(.animate(with: animationIdleTv, timePerFrame: 1)))
        
        screen.position = CGPoint(x: 575, y: 600)
        addChild(screen)
        screen.zPosition = -1
        screen.name = "screen"
        
        tv2.position = CGPoint(x: view.frame.width / 2, y: view.frame.height / 2)
        addChild(tv2)
        tv2.zPosition = -1
        
    
        for element in downloadingArray{
            element.position = CGPoint(x: view.frame.width / 2, y: 600)
            element.size = CGSize(width: element.frame.width * 4 , height: element.frame.height * 4)
            addChild(element)
            element.zPosition = -1
        }
        
        board.position = CGPoint(x: view.frame.width / 2, y: 80)
        board.size = CGSize(width: board.frame.width*1.2, height: board.frame.height*1.2)
        addChild(board)
        
        arrow.position = CGPoint(x: 1060, y: 60)
        arrow.name = "arrow"
        addChild(arrow)
        
        topText.text = "To do that, we'll need to leave the world of Pixels and navigate the internet to collect a greater variety of cats and dogs."
        topText.fontSize = 30
        topText.position = CGPoint(x: 680, y: 80)
        topText.fontColor = UIColor.black
        topText.horizontalAlignmentMode = SKLabelHorizontalAlignmentMode.center
        topText.verticalAlignmentMode = SKLabelVerticalAlignmentMode.center
        topText.lineBreakMode = NSLineBreakMode.byWordWrapping
        topText.preferredMaxLayoutWidth = 700
        topText.numberOfLines = 3
        addChild(topText)
        
        kiki.position = CGPoint(x: 200, y: 130)
        addChild(kiki)
        kiki.size = CGSize(width: kiki.frame.width * 1.2, height: kiki.frame.height * 1.2)
        kiki.run(.repeatForever(.animate(with: animationIdleKiki, timePerFrame: 0.5)))
        
        cancel.text = "Cancel"
        cancel.position = CGPoint(x: 705, y: 550)
        addChild(cancel)
        cancel.zPosition = -1
        cancel.fontColor = UIColor(red: 248/255, green: 128/255, blue: 166/255, alpha: 1)
        cancel.fontSize = 15
        
        catVsDogs.text = "CatVsDogFiles"
        catVsDogs.position = CGPoint(x: 515, y: 645)
        addChild(catVsDogs)
        catVsDogs.zPosition = -1
        catVsDogs.fontSize = 15
        
        download.text = "Downloading..."
        download.position = CGPoint(x: 512, y: 615)
        addChild(download)
        download.zPosition = -1
        download.fontColor = UIColor(red: 248/255, green: 128/255, blue: 166/255, alpha: 1)
        download.fontSize = 15
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
         for touch in touches {
             let location = touch.location(in: self)
             let touchedNode = atPoint(location)
             if ((location.x > screen.position.x - 250 && location.x < screen.position.x + 250) && (location.y > screen.position.y - 150 && location.y < screen.position.y + 150) ){
                     if loading < 7{
                         SoundClick()
                         loading += 1
                         downloadingArray[loading].zPosition = 0
                         downloadingArray[loading-1].zPosition = -1
                     }
                    else{
                        let nextScene = ImprovedModelScene()
                        nextScene.size = CGSize(width: nextScene.size.width, height: nextScene.size.height)
                        nextScene.scaleMode = .resizeFill
                        view?.presentScene(nextScene)
                    }
                }
                 
                else if touchedNode.name == "arrow" {
                      if page == 0{
                          topText.text = "To download cat and dog images, click anywhere on the computer screen until the download finishes."
                          tv.removeFromParent()
                          screen.zPosition = 0
                          tv2.zPosition = 0
                          download.zPosition = 1
                          cancel.zPosition = 1
                          catVsDogs.zPosition = 1
                          downloading.zPosition = 1
                          arrow.zPosition = -1
                          page += 1
                      }
                  }
             }
        }
    func SoundClick(){
        let audioNode = SKAudioNode(fileNamed: "media/click")
        audioNode.autoplayLooped = false
        self.addChild(audioNode)
        let playAction = SKAction.play()
        audioNode.run(playAction)
    }
    }

