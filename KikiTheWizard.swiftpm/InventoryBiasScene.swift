//
//  InventoryBiasScene.swift
//  KikiTheWizard
//
//  Created by Larissa Okabayashi on 24/01/24.
//

import Foundation
import SpriteKit
import CoreML

@available(iOS 17.0, *)
class InventoryBiasScene: SKScene {
    let wallpaper: SKSpriteNode = SKSpriteNode(imageNamed: "backGray")
    let inventory: SKSpriteNode = SKSpriteNode(imageNamed: "inventoryy")
    let topText: SKLabelNode = SKLabelNode(fontNamed: "Pixelify Sans")
    let DogText: SKLabelNode = SKLabelNode(fontNamed: "Pixelify Sans")
    let labelText: SKLabelNode = SKLabelNode(fontNamed: "Pixelify Sans")
    let boxCats: SKSpriteNode = SKSpriteNode(imageNamed: "box")
    let boxDogs: SKSpriteNode = SKSpriteNode(imageNamed: "box")
    let cat: SKSpriteNode = SKSpriteNode(imageNamed: "image 252")
    let dog: SKSpriteNode = SKSpriteNode(imageNamed: "image 247")
    let obj_1: SKSpriteNode = SKSpriteNode(imageNamed: "image 84-1")
    let obj_2: SKSpriteNode = SKSpriteNode(imageNamed: "image 84-2")
    let obj_3: SKSpriteNode = SKSpriteNode(imageNamed: "image 84-3")
    let obj_4: SKSpriteNode = SKSpriteNode(imageNamed: "image 84-4")
    let obj_5: SKSpriteNode = SKSpriteNode(imageNamed: "image 84-5")
    let obj_6: SKSpriteNode = SKSpriteNode(imageNamed: "image 84-6")
    let obj_7: SKSpriteNode = SKSpriteNode(imageNamed: "image 84-7")
    let obj_8: SKSpriteNode = SKSpriteNode(imageNamed: "image 84-8")
    let obj_9: SKSpriteNode = SKSpriteNode(imageNamed: "image 84-9")
    let obj_10: SKSpriteNode = SKSpriteNode(imageNamed: "image 84-10")
    let obj_11: SKSpriteNode = SKSpriteNode(imageNamed: "image 84-11")
    let obj_12: SKSpriteNode = SKSpriteNode(imageNamed: "image 84-12")
    let obj_13: SKSpriteNode = SKSpriteNode(imageNamed: "image 84-13")
    let obj_14: SKSpriteNode = SKSpriteNode(imageNamed: "image 84-14")
    let obj_15: SKSpriteNode = SKSpriteNode(imageNamed: "image 84-15")
    let obj_16: SKSpriteNode = SKSpriteNode(imageNamed: "image 84-16")
    let obj_17: SKSpriteNode = SKSpriteNode(imageNamed: "image 84-17")
    let obj_18: SKSpriteNode = SKSpriteNode(imageNamed: "image 84-18")
    let obj_19: SKSpriteNode = SKSpriteNode(imageNamed: "image 84-19")
    let obj_20: SKSpriteNode = SKSpriteNode(imageNamed: "image 84")
    let obj_21: SKSpriteNode = SKSpriteNode(imageNamed: "image 85")
    let obj_22: SKSpriteNode = SKSpriteNode(imageNamed: "image 86")
    let obj_23: SKSpriteNode = SKSpriteNode(imageNamed: "image 87")
    let obj_24: SKSpriteNode = SKSpriteNode(imageNamed: "image 88")
    let obj_25: SKSpriteNode = SKSpriteNode(imageNamed: "image 89")
    var goneCats: Int = 0
    var goneDogs: Int = 0
    private var currentNode: SKNode?
    var width: Double = 0
    var height: Double = 0
    var InitialLocation: CGPoint = CGPoint(x: 0, y: 0)
    
    let animationIdleDog: [SKTexture] = [
        SKTexture(imageNamed: "image 247"),
        SKTexture(imageNamed: "image 248"),
        SKTexture(imageNamed: "image 249"),
        SKTexture(imageNamed: "image 251")
    ]
    
    let animationIdleCat: [SKTexture] = [
        SKTexture(imageNamed: "image 252"),
        SKTexture(imageNamed: "image 253"),
        SKTexture(imageNamed: "image 246")
    ]
    
    override func didMove(to view: SKView) {
        width = view.frame.size.width
        height = view.frame.size.height
        
        wallpaper.position = CGPoint(x: view.frame.width / 2, y: view.frame.height / 2)
        wallpaper.size = CGSize(width: 20000, height: 20000)
        addChild(wallpaper)
        
        inventory.position = CGPoint(x: view.frame.width / 2, y: view.frame.height / 2)
        addChild(inventory)
        
        topText.position = CGPoint(x: view.frame.width / 8, y: view.frame.height / 1.8)
        topText.text = "Drag the cats from the inventory into the box."
        topText.fontSize = 20
        topText.fontColor = UIColor.black
        topText.horizontalAlignmentMode = SKLabelHorizontalAlignmentMode.center
//        topText.verticalAlignmentMode = SKLabelVerticalAlignmentMode.center
        topText.lineBreakMode = NSLineBreakMode.byWordWrapping
        topText.preferredMaxLayoutWidth = 160
        topText.numberOfLines = 4
        addChild(topText)
        
        DogText.position = CGPoint(x: view.frame.width / 1.15, y: view.frame.height / 1.8)
        DogText.text = "Drag the dogs from the inventory into the box."
        DogText.fontSize = 20
        DogText.fontColor = UIColor.black
        DogText.horizontalAlignmentMode = SKLabelHorizontalAlignmentMode.center
//        topText.verticalAlignmentMode = SKLabelVerticalAlignmentMode.center
        DogText.lineBreakMode = NSLineBreakMode.byWordWrapping
        DogText.preferredMaxLayoutWidth = 160
        DogText.numberOfLines = 4
        addChild(DogText)
        
        cat.position = CGPoint(x: view.frame.width / 8, y: view.frame.height / 1.24)
        addChild(cat)
        cat.run(.repeatForever(.animate(with: animationIdleCat, timePerFrame: 0.4)))
        
        dog.position = CGPoint(x: view.frame.width / 1.14, y: view.frame.height / 1.23)
        addChild(dog)
        dog.run(.repeatForever(.animate(with: animationIdleDog, timePerFrame: 0.4)))
        
        
        boxCats.position = CGPoint(x: view.frame.width / 7, y: view.frame.height / 4.63)
        boxCats.size = CGSize(width: boxCats.size.width/1.5, height: boxCats.size.height/1.5)
        addChild(boxCats)
        
        boxDogs.position = CGPoint(x: view.frame.width / 1.107, y: view.frame.height / 4.63)
        boxDogs.size = CGSize(width: boxDogs.size.width/1.5, height: boxDogs.size.height/1.5)
        addChild(boxDogs)
        
        createObj()
        obj_1.name = "draggable-Dog"
        obj_2.name = "draggable-Cat"
        obj_3.name = "draggable-Cat"
        obj_4.name = "draggable-Cat"
        obj_5.name = "draggable-Cat"
        obj_6.name = "draggable-Dog"
        obj_7.name = "draggable-Dog"
        obj_8.name = "draggable-Dog"
        obj_9.name = "draggable-Dog"
        obj_10.name = "draggable-Dog"
        obj_11.name = "draggable-Dog"
        obj_12.name = "draggable-Cat"
        obj_13.name = "draggable-Cat"
        obj_14.name = "draggable-Cat"
        obj_15.name = "draggable-Cat"
        obj_16.name = "draggable-Dog"
        obj_17.name = "draggable-Cat"
        obj_18.name = "draggable-Cat"
        obj_19.name = "draggable-Dog"
        obj_20.name = "draggable-Dog"
        obj_21.name = "draggable-Object"
        obj_22.name = "draggable-Object"
        obj_23.name = "draggable-Object"
        obj_24.name = "draggable-Object"
        obj_25.name = "draggable-Object"
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch = touches.first {
            let location = touch.location(in: self)
            
            let touchedNodes = self.nodes(at: location)
            for node in touchedNodes.reversed() {
                let nodeName = node.name ?? "-"
                let fullNameArr = nodeName.components(separatedBy: "-")
                let firstName: String = fullNameArr[0]
                if firstName == "draggable" {
                    InitialLocation = location
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
        if let touch = touches.first, let node = currentNode {
            if ((node.position.x > boxCats.position.x - 100 && node.position.x < boxCats.position.x + 100) && (node.position.y > boxCats.position.y - 100 && node.position.y < boxCats.position.y + 100) ){
                
                let nodeName = node.name ?? "draggable-"
                let fullNameArr = nodeName.components(separatedBy: "-")
                let lastName: String = fullNameArr[1]
                
                if lastName == "Cat"{
                    topText.text = "Drag the cats from the inventory into the box."
                    node.removeFromParent()
                    goneCats += 1
                }
                else if lastName == "Dog" || lastName == "Object"{
                    SoundWrong()
                    topText.text = "That's not a cat!"
                    node.position = InitialLocation
                }
            }
            
            if ((node.position.x > boxDogs.position.x - 100 && node.position.x < boxDogs.position.x + 100) && (node.position.y > boxDogs.position.y - 100 && node.position.y < boxDogs.position.y + 100) ){
                    let nodeName = node.name ?? "draggable-"
                    let fullNameArr = nodeName.components(separatedBy: "-")
                let lastName: String = fullNameArr[1]
                    if lastName == "Dog"{
                        DogText.text = "Drag the dogs from the inventory into the box."
                        node.removeFromParent()
                        goneDogs += 1
                    }
                    else if lastName == "Cat" || lastName == "Object"{
                        SoundWrong()
                        DogText.text = "That's not a dog!"
                        node.position = InitialLocation
                }
            }
        }
        if goneCats >= 10 && goneDogs >= 10{
            let nextScene = MagicScene()
            nextScene.size = CGSize(width: nextScene.size.width, height: nextScene.size.height)
            nextScene.scaleMode = .resizeFill
            view?.presentScene(nextScene)
        }
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.currentNode = nil
    }
    
    func createObj(){
        let obj: [SKSpriteNode] = [obj_1, obj_2, obj_21, obj_3, obj_4, obj_5,obj_22, obj_6, obj_7, obj_8, obj_9, obj_10, obj_23, obj_11, obj_12, obj_13, obj_14, obj_15, obj_16, obj_17,obj_24, obj_18, obj_19, obj_20, obj_25]
        var x = width/3.316
        var y = height/5.957
        for i in 0...24{
            obj[i].position = CGPoint(x: x , y: y)
    //        kiki.size = CGSize(width: 179, height: 251)
            obj[i].name = "draggable-all"
            addChild(obj[i])
            x += 120
            if ((i + 1) % 5 == 0 && i != 0){
                x = width/3.316
                y += 140
            }
        }
    }
    func SoundWrong(){
        let audioNode = SKAudioNode(fileNamed: "media/wrong")
        audioNode.autoplayLooped = false
        self.addChild(audioNode)
        let playAction = SKAction.play()
        audioNode.run(playAction)
    }
}
