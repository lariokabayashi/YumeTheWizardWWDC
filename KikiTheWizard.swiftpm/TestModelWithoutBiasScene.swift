//
//  TestModelWithoutBiasScene.swift
//  KikiTheWizard
//
//  Created by Larissa Okabayashi on 11/02/24.
//

import Foundation
import SpriteKit
import SwiftUI

@available(iOS 17.0, *)
class TestModelWithoutBiasScene: SKScene{
    
    var spriteSel: SKSpriteNode?
    
    var background: SKSpriteNode = SKSpriteNode(imageNamed: "background")
    
    let wallpaper: SKSpriteNode = SKSpriteNode(imageNamed: "background")
    
    let ground: SKSpriteNode = SKSpriteNode(imageNamed: "ground")
    
    let kiki: SKSpriteNode = SKSpriteNode(imageNamed: "kiki-in-front")
    
    let board: SKSpriteNode = SKSpriteNode(imageNamed: "board")
    
    let arrow180: SKSpriteNode = SKSpriteNode(imageNamed: "arrow-180")
    
    let arrow: SKSpriteNode = SKSpriteNode(imageNamed: "arrow")
    
    let box: SKSpriteNode = SKSpriteNode(imageNamed: "báuAberto")
    
    let topText = SKLabelNode(fontNamed: "Pixelify Sans")
    let auxText1 = SKLabelNode(fontNamed: "Pixelify Sans")
    let auxText2 = SKLabelNode(fontNamed: "Pixelify Sans")
    
    let inventoryTest = SKSpriteNode(imageNamed: "innventory-test")
    
    let kikiLabel = SKLabelNode(fontNamed: "Pixelify Sans")
    
    let contour = SKSpriteNode(imageNamed: "frame")
    
    private var currentNode: SKNode?
    
    var page: Int = 0
    
    let comment = SKSpriteNode(imageNamed: "comment")
    
    let kikiBlink = SKSpriteNode(imageNamed: "kiki-animation1")

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
    
    let animationIdleKiki: [SKTexture] = [
        SKTexture(imageNamed: "kiki-animation1"),
        SKTexture(imageNamed: "kiki-animation2"),
        SKTexture(imageNamed: "kiki-animation3")
    ]


    override func didMove(to view: SKView) {
        
        
        
        wallpaper.position = CGPoint(x: view.frame.width / 2, y: view.frame.height / 2)
        addChild(wallpaper)
        
        background.position = CGPoint(x: view.frame.width / 2, y: view.frame.height / 2)
        addChild(background)
        
        background.run(.repeatForever(.animate(with: animationIdle, timePerFrame: 0.5)))
        
        ground.size = CGSize(width: 1000, height: 1000)
        ground.position = CGPoint(x: view.frame.width / 2.4, y: 160)
        addChild(ground)
        
        kiki.position = CGPoint(x: view.frame.width / 2.4, y: view.frame.height / 2.5)
//        kiki.size = CGSize(width: 844, height: 844)
        addChild(kiki)
        
        box.position = CGPoint(x: view.frame.width / 2.4, y: view.frame.height / 5.2)
        addChild(box)
        
        
        board.position = CGPoint(x: view.frame.width / 2.4, y: 720)
        addChild(board)
        
        inventoryTest.position = CGPoint(x: view.frame.width / 1.1, y: view.frame.height/2)
        addChild(inventoryTest)
        
        contour.position = CGPoint(x: view.frame.width / 1.07, y: view.frame.height / 2)
        addChild(contour)

        spriteSel?.position = CGPoint(x: view.frame.width / 1.07, y: view.frame.height / 2)
        spriteSel?.size = CGSize(width: (spriteSel?.size.width ?? 440)/2 , height: (spriteSel?.size.height ?? 560)/2)
        spriteSel?.zPosition = 11
        addChild(spriteSel!)
        
        arrow180.position = CGPoint(x: 1020, y: view.frame.height/2)
        addChild(arrow180)
        
        arrow.position = CGPoint(x: 920, y: 700)
        arrow.name = "arrow"
        addChild(arrow)
        arrow.zPosition = -1
        
        comment.position = CGPoint(x: view.frame.width/2, y: view.frame.height/2)
        addChild(comment)
        comment.zPosition = -1
        
        kikiBlink.size = CGSize(width: 281, height: 322)
        kikiBlink.position = CGPoint(x: view.frame.width/4, y: view.frame.height/2)
        addChild(kikiBlink)
        kikiBlink.run(.repeatForever(.animate(with: animationIdleKiki, timePerFrame: 0.5)))
        kikiBlink.zPosition = -1
        
        kikiLabel.text = "Kiki"
        kikiLabel.position = CGPoint(x: 320, y: 620)
        kikiLabel.fontSize = 40
        kikiLabel.fontColor = UIColor.black
        kikiLabel.zPosition = -1
        addChild(kikiLabel)
        
        topText.text = "Let's see if it works, put a cat or a dog inside the box."
        topText.fontSize = 30
        topText.position = CGPoint(x: 480, y: 700)
        topText.fontColor = UIColor.black
        topText.verticalAlignmentMode = SKLabelVerticalAlignmentMode.center
        topText.lineBreakMode = NSLineBreakMode.byWordWrapping
        topText.preferredMaxLayoutWidth = 800
        topText.numberOfLines = 3
        addChild(topText)
    
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            let location = touch.location(in: self)
            let touchedNode = atPoint(location)
            if touchedNode.name == "arrow" {
            }
        }
        if let touch = touches.first {
            let location = touch.location(in: self)
            
            let touchedNodes = self.nodes(at: location)
            for node in touchedNodes.reversed() {
                if node.name == "draggable" {
                    self.currentNode = node
                }
            }
        }

    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch = touches.first, let node = currentNode {
            let touchLocation = touch.location(in: self)
            node.position = touchLocation
        }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {

        if (page == 0){
            if let touch = touches.first, let node = currentNode {
                if ((node.position.x > box.position.x - 200 && node.position.x < box.position.x + 200) && (node.position.y > box.position.y - 200 && node.position.y < box.position.y + 200) ){
                    let prediction = modelPredict(fileImg:  UIImage(cgImage: (buildYourAnimalScene.shared.spriteSel.texture?.cgImage())!))
                        topText.text = "Box says: It's a " + prediction + "!"
                        node.removeFromParent()
                }
            }
        }
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.currentNode = nil
    }
    
    func modelPredict(fileImg: UIImage)-> String{
        do{
            let model = try ModelWithoutBias(contentsOf: ModelWithoutBias.urlOfModelInThisBundle).model
            let prediction = predict(model: model, image: fileImg)
            print(prediction)
            return prediction ?? ""
          
        }catch {
            print(error.localizedDescription)
        }
        return ""
    }
}
