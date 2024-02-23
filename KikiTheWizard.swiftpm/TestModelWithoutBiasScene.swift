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
    let ground2: SKSpriteNode = SKSpriteNode(imageNamed: "image 46")
    
    let kiki: SKSpriteNode = SKSpriteNode(imageNamed: "image 311")
    
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
    let button1: SKSpriteNode = SKSpriteNode(imageNamed: "button")
    let button2: SKSpriteNode = SKSpriteNode(imageNamed: "button")
    var width: Double = 0
    var height: Double = 0
    
    override func didMove(to view: SKView) {
        width = view.frame.size.width
        height = view.frame.size.height
        
        wallpaper.position = CGPoint(x: view.frame.width / 2, y: view.frame.height / 2)
        wallpaper.size = CGSize(width: 20000, height: 20000)
        addChild(wallpaper)
        
        background.position = CGPoint(x: view.frame.width / 2, y: view.frame.height / 2)
        addChild(background)
        
        background.run(.repeatForever(.animate(with: animationIdle, timePerFrame: 0.5)))
        
        ground.size = CGSize(width: 1000, height: 1000)
        ground.position = CGPoint(x: view.frame.width / 2.4, y: 160)
        addChild(ground)
        
        ground2.position = CGPoint(x: view.frame.width / 2, y: 220)
        addChild(ground2)
        ground2.zPosition = -1
        
        kiki.position = CGPoint(x: view.frame.width / 2.4, y: view.frame.height / 2.5)
//        kiki.size = CGSize(width: 844, height: 844)
        addChild(kiki)
        
        box.position = CGPoint(x: view.frame.width / 2.4, y: view.frame.height / 5.2)
        addChild(box)
        
        
        board.position = CGPoint(x: view.frame.width / 2.4, y: height/1.1583)
        addChild(board)
        board.zPosition = 2
        
        inventoryTest.position = CGPoint(x: view.frame.width / 1.1, y: view.frame.height/2)
        addChild(inventoryTest)
        
//        contour.position = CGPoint(x: view.frame.width / 1.07, y: view.frame.height / 2)
//        addChild(contour)
        
        arrow180.position = CGPoint(x: 1020, y: view.frame.height/2)
        arrow180.name = "arrow180"
        addChild(arrow180)
        arrow180.zPosition = -1
        
        arrow.position = CGPoint(x: width/1.2978, y: height/1.1424)
        arrow.name = "arrow"
        addChild(arrow)
        arrow.zPosition = -1
        
        comment.position = CGPoint(x: view.frame.width/2, y: view.frame.height/2)
        addChild(comment)
        comment.zPosition = -1
        
        kikiBlink.size = CGSize(width: 281, height: 322)
        kikiBlink.position = CGPoint(x: view.frame.width/4, y: view.frame.height/2)
        addChild(kikiBlink)
        kikiBlink.run(.repeatForever(.animate(with: animationIdleKiki2, timePerFrame: 0.5)))
        kikiBlink.zPosition = -1
        
        kikiLabel.text = "Kiki"
        kikiLabel.position = CGPoint(x: width/3.73, y: height/1.367)
        kikiLabel.fontSize = 40
        kikiLabel.fontColor = UIColor.black
        kikiLabel.zPosition = -1
        addChild(kikiLabel)
        
        topText.text = "Let's test it out. Place either the cat or the dog you've selected inside the box and see how it goes"
        topText.fontSize = 30
        topText.position = CGPoint(x: width/2.4875, y: height/1.1746)
        topText.fontColor = UIColor.black
        topText.verticalAlignmentMode = SKLabelVerticalAlignmentMode.center
        topText.lineBreakMode = NSLineBreakMode.byWordWrapping
        topText.preferredMaxLayoutWidth = 800
        topText.numberOfLines = 3
        addChild(topText)
        topText.zPosition = 2
        
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
        
        button1.position = CGPoint(x: width/2, y: height/1.668)
        addChild(button1)
        button1.zPosition = -1
        button1.name = "button1"
        
        button2.position = CGPoint(x: width/2, y: height/1.283)
        addChild(button2)
        button2.zPosition = -1
        button2.name = "button2"
        
        auxText1.position = CGPoint(x: width/2, y: height/1.7)
        addChild(auxText1)
        auxText1.zPosition = -1
        auxText1.fontSize = 30
        auxText1.fontColor = .black
        
        auxText2.position = CGPoint(x: width/2, y: height/1.3)
        addChild(auxText2)
        auxText2.zPosition = -1
        auxText2.fontSize = 30
        auxText2.fontColor = .black
        
        spriteSel?.position = CGPoint(x: width/1.066, y: height/2)
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            let location = touch.location(in: self)
            let touchedNode = atPoint(location)
            if touchedNode.name == "arrow" {
                SoundEnter()
                if page == 1{
                    comment.zPosition = 0
                    kikiLabel.zPosition = 0
                    kikiBlink.zPosition = 0
                    arrow.position = CGPoint(x: width/1.194, y: height/3.336)
                    arrow.zPosition = 3
                    board.zPosition = -1
                    tree.zPosition = -1
                    bee.zPosition = -1
                    flowers.zPosition = -1
                    topText.position = CGPoint(x: width/1.592, y: height/2.085)
                    topText.fontSize = 30
                    topText.text = "Great! Keep in mind that the model is still susceptible to errors. Consistently monitoring and enhancing its performance in production to identify and address biases is an ongoing task"
                    topText.preferredMaxLayoutWidth = 600
                    topText.numberOfLines = 5
                    topText.zPosition = 1
                    page += 1
                }
                else if page == 2{
                    topText.zPosition = -1
                    comment.zPosition = -1
                    kikiLabel.zPosition = -1
                    kikiBlink.zPosition = -1
                    button1.zPosition = 1
                    button2.zPosition = 1
                    inventoryTest.zPosition = -1
                    arrow180.zPosition = -1
                    arrow.zPosition = -1
                    box.zPosition = -1
                    ground.zPosition = -1
                    ground2.zPosition = 1
                    tree.zPosition = 1
                    bee.zPosition = 1
                    flowers.zPosition = 1
                    tree.position = CGPoint(x: 200, y: 250)
                    flowers.position = CGPoint(x: 1050, y: 180)
                    bee.position = CGPoint(x: 350, y: 200)
                    kiki.run(.repeatForever(.animate(with: animationIdleKiki, timePerFrame: 0.5)))
                    kiki.zPosition = 2
                    kiki.position = CGPoint(x: 597, y: 200)
                    auxText1.zPosition = 2
                    auxText2.zPosition = 2
                    auxText2.text = "Test It With Another Animal"
                    auxText1.text = "About The Author"
                    page += 1
                }
            }
            else if touchedNode.name == "button2"{
                SoundClick()
                let scene = buildYourAnimalScene()
                scene.size = CGSize(width: scene.size.width, height: scene.size.height)
                scene.scaleMode = .resizeFill
                view?.presentScene(scene)
                page += 1
            }
            else if touchedNode.name == "button1"{
                SoundClick()
                meetTheAuthor.zPosition = 3
                arrow180.zPosition = 4
                arrow180.position = CGPoint(x: 110, y: arrow180.position.y)
                page += 1
            }
            else if touchedNode.name == "arrow180"{
                meetTheAuthor.zPosition = -1
                arrow180.zPosition = -1
                page += 1
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
                    let img = UIImage(cgImage: (spriteSel?.texture?.cgImage())!)
                    arrow.zPosition = 3
                    let prediction = modelPredict(fileImg: img)
                    topText.text = "Box says: It's a " + prediction + "!"
                    if prediction == "Cat"{
                        SoundMeow()
                    }
                    else if prediction == "Dog"{
                        SoundBark()
                    }
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
    func addSelectedImg(sprite: SKSpriteNode?) {
        spriteSel = sprite
        spriteSel?.zPosition = 11
        spriteSel?.name = "draggable"
        spriteSel?.removeFromParent()
        addChild(spriteSel!)
        if spriteSel?.size.height ?? 100 > 200 || spriteSel?.size.width ?? 100 > 200{
            spriteSel?.size = CGSize(width: 150, height: 150)
        }
    }
    func SoundMeow(){
        let audioNode = SKAudioNode(fileNamed: "media/meow")
        audioNode.autoplayLooped = false
        self.addChild(audioNode)
        let playAction = SKAction.play()
        audioNode.run(playAction)
    }
    func SoundBark(){
        let audioNode = SKAudioNode(fileNamed: "media/dogBark")
        audioNode.autoplayLooped = false
        self.addChild(audioNode)
        let playAction = SKAction.play()
        audioNode.run(playAction)
    }
    func SoundClick(){
        let audioNode = SKAudioNode(fileNamed: "media/click")
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
