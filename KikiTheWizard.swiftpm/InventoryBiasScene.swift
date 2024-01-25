//
//  InventoryBiasScene.swift
//  KikiTheWizard
//
//  Created by Larissa Okabayashi on 24/01/24.
//

import Foundation
import SpriteKit
import CoreML

class InventoryBiasScene: SKScene {
    
    let inventory: SKSpriteNode = SKSpriteNode(imageNamed: "Invetory_dogs")
    let topText: SKLabelNode = SKLabelNode(text: "oii")
    let box: SKSpriteNode = SKSpriteNode(imageNamed: "box")
    let kiki: SKSpriteNode = SKSpriteNode(imageNamed: "kiki_alone")
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
    private var currentNode: SKNode?
    
    override func didMove(to view: SKView) {
        do{
            let mlModel = try KikiTheWizardImageClassifier_1(configuration: MLModelConfiguration()).model
        }
        catch{
            print(error.localizedDescription)
        }
        
        inventory.position = CGPoint(x: view.frame.width / 2, y: view.frame.height / 2)
        addChild(inventory)
        
        topText.position = CGPoint(x: view.frame.width / 2, y: view.frame.height / 2)
//        addChild(topText)
        
        box.position = CGPoint(x: view.frame.width / 4.35, y: view.frame.height / 4.63)
        addChild(box)
        
        kiki.position = CGPoint(x: view.frame.width / 4.9, y: view.frame.height / 1.3)
//        kiki.size = CGSize(width: 179, height: 251)
        addChild(kiki)
        
        createObj()
        
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
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
        self.currentNode = nil
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.currentNode = nil
    }
    
    func createObj(){
        let obj: [SKSpriteNode] = [obj_1, obj_2, obj_21, obj_3, obj_4, obj_5,obj_22, obj_6, obj_7, obj_8, obj_9, obj_10, obj_23, obj_11, obj_12, obj_13, obj_14, obj_15, obj_16, obj_17,obj_24, obj_18, obj_19, obj_20, obj_25]
        var x: Int = 550
        var y: Int = 150
        for i in 0...24{
            obj[i].position = CGPoint(x: x , y: y)
    //        kiki.size = CGSize(width: 179, height: 251)
            obj[i].name = "draggable"
            addChild(obj[i])
            x += 120
            if ((i + 1) % 5 == 0 && i != 0){
                x = 550
                y += 140
            }
        }
    }
}
