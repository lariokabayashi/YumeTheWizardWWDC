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
    }
}
