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
    
    let animationIdleKiki2: [SKTexture] = [
        SKTexture(imageNamed: "kiki-animation1"),
        SKTexture(imageNamed: "kiki-animation2"),
        SKTexture(imageNamed: "kiki-animation3")
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
    let meetTheAuthor: SKSpriteNode = SKSpriteNode(imageNamed: "meetTheAuthor")
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
        
//        contour.position = CGPoint(x: view.frame.width / 1.07, y: view.frame.height / 2)
//        addChild(contour)
        
        arrow180.position = CGPoint(x: 1020, y: view.frame.height/2)
        addChild(arrow180)
        
        arrow.position = CGPoint(x: 920, y: 700)
        arrow.name = "arrow"
        addChild(arrow)
        
        comment.position = CGPoint(x: view.frame.width/2, y: view.frame.height/2)
        addChild(comment)
        comment.zPosition = -1
        
        kikiBlink.size = CGSize(width: 281, height: 322)
        kikiBlink.position = CGPoint(x: view.frame.width/4, y: view.frame.height/2)
        addChild(kikiBlink)
        kikiBlink.run(.repeatForever(.animate(with: animationIdleKiki2, timePerFrame: 0.5)))
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
        
        tree.position = CGPoint(x: 170, y: 500)
        addChild(tree)
        
        bee.position = CGPoint(x: 270, y: 400)
        addChild(bee)
        bee.run(.repeatForever(.animate(with: animationIdleBee, timePerFrame: 0.3)))
        
        flowers.position = CGPoint(x: 870, y: 400)
        addChild(flowers)
        flowers.run(.repeatForever(.animate(with: animationIdleFlowers, timePerFrame: 0.3)))
    
        meetTheAuthor.position = CGPoint(x: view.frame.width/2, y: view.frame.height/2)
        addChild(meetTheAuthor)
        meetTheAuthor.zPosition = -1
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            let location = touch.location(in: self)
            let touchedNode = atPoint(location)
            if touchedNode.name == "arrow" {
                if page == 1{
                    comment.zPosition = 0
                    kikiLabel.zPosition = 0
                    kikiBlink.zPosition = 0
                    arrow.position = CGPoint(x: 1000, y: 250)
                    arrow.zPosition = 1
                    board.zPosition = -1
                    tree.zPosition = -1
                    bee.zPosition = -1
                    flowers.zPosition = -1
                    topText.position = CGPoint(x: 750, y: 400)
                    topText.fontSize = 30
                    topText.text = "Great! Remember that consistently monitoring and enhancing the model's performance in production to identify and address biases is an ongoing task."
                    topText.preferredMaxLayoutWidth = 600
                    topText.numberOfLines = 5
                    topText.zPosition = 1
                    page += 1
                }
                else if page == 2{
                    meetTheAuthor.zPosition = 1
                }
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
                    spriteSel?.size = CGSize(width: 360, height: 360)
                    let img = UIImage(cgImage: (spriteSel?.texture?.cgImage())!)
                    let prediction = modelPredict(fileImg: img)
                    topText.text = "Box says: It's a " + prediction + "!"
                    node.removeFromParent()
                    page += 1
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
    func addSelectedImg(img: UIImage) {
        spriteSel = SKSpriteNode(texture: SKTexture(image: img))
        spriteSel?.position = CGPoint(x: 1120, y: 417)
//        let width = (spriteSel?.size.width ?? 1000)/10
//        let height = (spriteSel?.size.height ?? 1000)/10
//        spriteSel?.size = CGSize(width:width, height: height)
        spriteSel?.zPosition = 11
        spriteSel?.name = "draggable"
        addChild(spriteSel!)
        if spriteSel?.size.height ?? 100 > 200 || spriteSel?.size.width ?? 100 > 200{
            spriteSel?.size = CGSize(width: 150, height: 150)
        }
    }
}
