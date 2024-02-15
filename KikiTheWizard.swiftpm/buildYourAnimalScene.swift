//
//  buildYourAnimalScene.swift
//  KikiTheWizard
//
//  Created by Larissa Okabayashi on 11/02/24.
//

import Foundation
import SpriteKit
import SwiftUI

@available(iOS 17.0, *)
class buildYourAnimalScene: SKScene, ObservableObject {
    
    static let shared = buildYourAnimalScene()
    var background: SKSpriteNode = SKSpriteNode(imageNamed: "BACKGROUND 1")
    var board: SKSpriteNode = SKSpriteNode(imageNamed: "boardBuild")
    var board2: SKSpriteNode = SKSpriteNode(imageNamed: "image 203")
    var board3: SKSpriteNode = SKSpriteNode(imageNamed: "image 204")
    var graySelected: SKSpriteNode = SKSpriteNode(imageNamed: "cinzaSelected")
    var grayNotSelected1: SKSpriteNode = SKSpriteNode(imageNamed: "cinzaNotSelected")
    var grayNotSelected2: SKSpriteNode = SKSpriteNode(imageNamed: "cinzaNotSelected")
    var cat: SKSpriteNode = SKSpriteNode(imageNamed: "cat")
    var dog: SKSpriteNode = SKSpriteNode(imageNamed: "dog")
    var kikiSays: SKSpriteNode =  SKSpriteNode(imageNamed: "kikiSays")
    var frameBuild: SKSpriteNode = SKSpriteNode(imageNamed: "image 131")
    var frameSelected: SKSpriteNode = SKSpriteNode(imageNamed: "selected")
    var frameNotSelected: SKSpriteNode = SKSpriteNode(imageNamed: "notSelected")
    var frameNotSelected2: SKSpriteNode = SKSpriteNode(imageNamed: "notSelected")
    var downText: SKLabelNode = SKLabelNode(fontNamed: "Pixelify Sans")
    var animalText: SKLabelNode = SKLabelNode(fontNamed: "Pixelify Sans")
    var breedText: SKLabelNode = SKLabelNode(fontNamed: "Pixelify Sans")
    var colorText: SKLabelNode = SKLabelNode(fontNamed: "Pixelify Sans")
    var dog1: SKSpriteNode = SKSpriteNode(imageNamed: "image 227")
    var dog2: SKSpriteNode = SKSpriteNode(imageNamed: "image 228")
    var dog3: SKSpriteNode = SKSpriteNode(imageNamed: "image 229")
    var cat1: SKSpriteNode = SKSpriteNode(imageNamed: "image 194")
    var cat2: SKSpriteNode = SKSpriteNode(imageNamed: "image 195")
    var cat3: SKSpriteNode = SKSpriteNode(imageNamed: "image 196")
    var paw1: SKSpriteNode = SKSpriteNode(imageNamed: "image 226")
    var paw2: SKSpriteNode = SKSpriteNode(imageNamed: "image 224")
    var paw3: SKSpriteNode = SKSpriteNode(imageNamed: "image 225")
    var animalSelected: Int = 1
    var breedSelected: Int = 0
    var colorSelected: Int = 0
    var spriteSelected: Bool = false
    var spriteSel: SKSpriteNode = SKSpriteNode(imageNamed: "image 205")
    var sprite1:SKSpriteNode = SKSpriteNode(imageNamed: "image 205")
    var sprite2:SKSpriteNode = SKSpriteNode(imageNamed: "image 206")
    var sprite3:SKSpriteNode = SKSpriteNode(imageNamed: "image 207")
    var sprite4:SKSpriteNode = SKSpriteNode(imageNamed: "image 208")
    var sprite5:SKSpriteNode = SKSpriteNode(imageNamed: "image 209")
    var sprite6:SKSpriteNode = SKSpriteNode(imageNamed: "image 210")
    var sprite7:SKSpriteNode = SKSpriteNode(imageNamed: "image 211")
    var sprite8:SKSpriteNode = SKSpriteNode(imageNamed: "image 212")
    var sprite9:SKSpriteNode = SKSpriteNode(imageNamed: "image 213")
    var sprite10:SKSpriteNode = SKSpriteNode(imageNamed: "image 214")
    var sprite11:SKSpriteNode = SKSpriteNode(imageNamed: "image 215")
    var sprite12:SKSpriteNode = SKSpriteNode(imageNamed: "image 216")
    var sprite13:SKSpriteNode = SKSpriteNode(imageNamed: "image 217")
    var sprite14:SKSpriteNode = SKSpriteNode(imageNamed: "image 218")
    var sprite15:SKSpriteNode = SKSpriteNode(imageNamed: "image 219")
    var sprite16:SKSpriteNode = SKSpriteNode(imageNamed: "image 220")
    var sprite17:SKSpriteNode = SKSpriteNode(imageNamed: "image 221")
    var sprite18:SKSpriteNode = SKSpriteNode(imageNamed: "image 222")
    var sprite19:SKSpriteNode = SKSpriteNode(imageNamed: "image 223")
    var done:SKSpriteNode = SKSpriteNode(imageNamed: "done")
    var listOfDogs: [SKSpriteNode] = []
    var listOfCats: [SKSpriteNode] = []
    
    override func didMove(to view: SKView) {
        background.position = CGPoint(x: view.frame.width / 2, y: view.frame.height / 2)
        addChild(background)
        
//        frameBuild.size = CGSize(width: 1058, height: 700)
        frameBuild.position = CGPoint(x: view.frame.width / 2, y: view.frame.height / 1.8)
        addChild(frameBuild)
        
        board.position = CGPoint(x: view.frame.width / 1.7, y: view.frame.height / 1.8)
        addChild(board)
        
        board2.position = CGPoint(x: view.frame.width / 1.7, y: view.frame.height / 1.8)
        board2.zPosition = -1
        addChild(board2)
        
        board3.position = CGPoint(x: view.frame.width / 1.7, y: view.frame.height / 1.8)
        board3.zPosition = -1
        addChild(board3)
        
        frameSelected.position = CGPoint(x: view.frame.width / 2.3, y: view.frame.height / 2)
        addChild(frameSelected)
        
        frameNotSelected.position = CGPoint(x: view.frame.width / 1.35, y: view.frame.height / 2)
        addChild(frameNotSelected)
        
        dog.position = CGPoint(x: view.frame.width / 2.4, y: view.frame.height / 2)
        dog.name = "dog"
        addChild(dog)
        
        cat.position = CGPoint(x: view.frame.width / 1.35, y: view.frame.height / 2)
        cat.name = "cat"
        addChild(cat)
        
        kikiSays.position = CGPoint(x: view.frame.width / 2, y: 130)
        addChild(kikiSays)
        
        done.position = CGPoint(x: view.frame.width / 1.25, y: 130)
        addChild(done)
        done.zPosition = -1
        done.name = "done"
        
        downText.position = CGPoint(x: 720, y: 40)
        downText.text = "Build your cat or dog to test if the spell is really working"
        downText.fontColor = .black
        addChild(downText)
        
        animalText.position = CGPoint(x: view.frame.width / 1.85, y: view.frame.height / 1.35)
        animalText.text = "animal"
        animalText.fontColor = .white
        animalText.name = "animalText"
        addChild(animalText)
        
        breedText.position = CGPoint(x: view.frame.width / 1.5, y: view.frame.height / 1.35)
        breedText.text = "breed"
        breedText.fontColor = .black
        breedText.name = "breedText"
        addChild(breedText)
        
        colorText.position = CGPoint(x: view.frame.width / 1.25, y: view.frame.height / 1.35)
        colorText.text = "color"
        colorText.fontColor = .black
        colorText.name = "colorText"
        addChild(colorText)
        
        graySelected.position = CGPoint(x: view.frame.width / 2.8, y: view.frame.height / 2)
        addChild(graySelected)
        graySelected.zPosition = -1
        
        grayNotSelected1.position = CGPoint(x: view.frame.width / 1.8, y: view.frame.height / 2)
        addChild(grayNotSelected1)
        grayNotSelected1.zPosition = -1
        
        grayNotSelected2.position = CGPoint(x: view.frame.width / 1.3, y: view.frame.height / 2)
        addChild(grayNotSelected2)
        grayNotSelected2.zPosition = -1
        
        frameNotSelected2.position = CGPoint(x: view.frame.width / 1.26, y: view.frame.height / 2)
        addChild(frameNotSelected2)
        frameNotSelected2.zPosition = -1
        
        dog1.position = CGPoint(x: view.frame.width / 2.8, y: view.frame.height / 2)
        addChild(dog1)
        dog1.name = "dog1"
        dog1.zPosition = -1
        
        dog2.position = CGPoint(x: view.frame.width / 1.77, y: view.frame.height / 2)
        addChild(dog2)
        dog2.name = "dog2"
        dog2.zPosition = -1
     
        dog3.position = CGPoint(x: view.frame.width / 1.3, y: view.frame.height / 2)
        addChild(dog3)
        dog3.name = "dog3"
        dog3.zPosition = -1
        
        cat1.position = CGPoint(x: view.frame.width / 2.8, y: view.frame.height / 2)
        addChild(cat1)
        cat1.name = "cat1"
        cat1.zPosition = -1
        
        cat2.position = CGPoint(x: view.frame.width / 1.8, y: view.frame.height / 2)
        addChild(cat2)
        cat2.name = "cat2"
        cat2.zPosition = -1
     
        cat3.position = CGPoint(x: view.frame.width / 1.3, y: view.frame.height / 2)
        addChild(cat3)
        cat3.name = "cat3"
        cat3.zPosition = -1
        
        paw1.position = CGPoint(x: 460.42, y: view.frame.height / 2)
        addChild(paw1)
        paw1.name = "paw1"
        paw1.zPosition = -1
        
        paw2.position = CGPoint(x: 705.28, y: view.frame.height / 2)
        addChild(paw2)
        paw2.name = "paw2"
        paw2.zPosition = -1
     
        paw3.position = CGPoint(x: 947.61, y: view.frame.height / 2)
        addChild(paw3)
        paw3.name = "paw3"
        paw3.zPosition = -1
        
        listOfDogs = [sprite1,sprite2,sprite17, sprite5, sprite10, sprite18, sprite6, sprite11, sprite19]
        listOfCats = [sprite7, sprite12, sprite3, sprite9,sprite14, sprite16, sprite8, sprite13, sprite15]
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            let location = touch.location(in: self)
            let touchedNode = atPoint(location)
            if touchedNode.name == "cat" {
                frameSelected.position = CGPoint(x: 884.44, y: 417)
                frameNotSelected.position = CGPoint(x: 519.13, y: 417)
                animalSelected = 0
            }
            else if touchedNode.name == "dog" {
                frameSelected.position = CGPoint(x: 426.42, y: 417)
                frameNotSelected.position = CGPoint(x: 746.24, y: 417)
                animalSelected = 1
            }
            else if touchedNode.name == "breedText"{
                frameSelected.zPosition = -1
                frameNotSelected.zPosition = -1
                cat.removeFromParent()
                dog.removeFromParent()
                graySelected.zPosition = 1
                grayNotSelected1.zPosition = 1
                grayNotSelected2.zPosition = 1
                board.zPosition = -1
                board2.zPosition = 0
                animalText.fontColor = .black
                breedText.fontColor = .white
                if animalSelected == 1{
                    dog1.zPosition = 1
                    dog2.zPosition = 1
                    dog3.zPosition = 1
                }
                else{
                    cat1.zPosition = 1
                    cat2.zPosition = 1
                    cat3.zPosition = 1
                }
            }
            else if touchedNode.name == "dog2"{
                graySelected.position =  CGPoint(x: 682.28, y: 417)
                grayNotSelected1.position = CGPoint(x: 426.42, y: 417)
                grayNotSelected2.position = CGPoint(x: 918.46, y: 417)
                breedSelected = 1
            }
            else if touchedNode.name == "dog3"{
                grayNotSelected2.position =  CGPoint(x: 682.28, y: 417)
                grayNotSelected1.position = CGPoint(x: 426.42, y: 417)
                graySelected.position = CGPoint(x: 918.46, y: 417)
                breedSelected = 2
            }
            else if touchedNode.name == "dog1"{
                graySelected.position = CGPoint(x: 426.42, y: 417)
                grayNotSelected1.position =  CGPoint(x: 682.28, y: 417)
                grayNotSelected2.position = CGPoint(x: 918.46, y: 417)
                breedSelected = 0
            }
            else if touchedNode.name == "cat2"{
                graySelected.position =  CGPoint(x: 682.28, y: 417)
                grayNotSelected1.position = CGPoint(x: 426.42, y: 417)
                grayNotSelected2.position = CGPoint(x: 918.46, y: 417)
                breedSelected = 1
            }
            else if touchedNode.name == "cat3"{
                grayNotSelected2.position =  CGPoint(x: 682.28, y: 417)
                grayNotSelected1.position = CGPoint(x: 426.42, y: 417)
                graySelected.position = CGPoint(x: 918.46, y: 417)
                breedSelected = 2
            }
            else if touchedNode.name == "cat1"{
                graySelected.position = CGPoint(x: 426.42, y: 417)
                grayNotSelected1.position =  CGPoint(x: 682.28, y: 417)
                grayNotSelected2.position = CGPoint(x: 918.46, y: 417)
                breedSelected = 0
            }
            else if touchedNode.name == "colorText"{
                frameSelected.zPosition = 1
                frameNotSelected.zPosition = 1
                cat1.zPosition = -1
                cat2.zPosition = -1
                cat3.zPosition = -1
                dog1.zPosition = -1
                dog2.zPosition = -1
                dog3.zPosition = -1
                graySelected.zPosition = -1
                grayNotSelected1.zPosition = -1
                grayNotSelected2.zPosition = -1
                board2.zPosition = -1
                board3.zPosition = 0
                breedText.fontColor = .black
                colorText.fontColor = .white
                paw1.zPosition = 1
                paw2.zPosition = 1
                paw3.zPosition = 1
                frameSelected.position = CGPoint(x: 460.42, y: 417)
                frameNotSelected.position = CGPoint(x: 705.28, y: 417)
                frameNotSelected2.zPosition = 1
            }
            else if touchedNode.name == "paw2"{
                frameNotSelected.position = CGPoint(x: 460.42, y: 417)
                frameSelected.position =  CGPoint(x: 705.28, y: 417)
                frameNotSelected2.position = CGPoint(x: 947.61, y: 417)
                colorSelected = 1
                spriteSelected = true
            }
            else if touchedNode.name == "paw3"{
                frameNotSelected.position = CGPoint(x: 460.42, y: 417)
                frameNotSelected2.position =  CGPoint(x: 705.28, y: 417)
                frameSelected.position = CGPoint(x: 947.61, y: 417)
                colorSelected = 2
                spriteSelected = true
            }
            else if touchedNode.name == "paw1"{
                frameSelected.position = CGPoint(x: 460.42, y: 417)
                frameNotSelected.position =  CGPoint(x: 705.28, y: 417)
                frameNotSelected2.position = CGPoint(x: 947.61, y: 417)
                colorSelected = 0
                spriteSelected = true
            }
            if touchedNode.name == "done"{
                if let view = self.view {
                    spriteSel.removeFromParent()
                    let scene = TestModelWithoutBiasScene()
                    scene.spriteSel = spriteSel
                    scene.size = CGSize(width: 1194, height: 834)
                    scene.scaleMode = .aspectFill
                    view.presentScene(scene)
                
                }
            }
            
            else if spriteSelected{
                done.zPosition = 1
                downText.zPosition = -1
                kikiSays.zPosition = -1
                spriteSel = spriteChoosen(animalSelected: animalSelected, breedSelected: breedSelected, colorSelected: colorSelected)
                spriteSel.position = CGPoint(x: 200, y: 417)
                spriteSel.size = CGSize(width: spriteSel.size.width * 2, height: spriteSel.size.height * 2)
                spriteSel.name = "draggable"
                addChild(spriteSel)
            }
        }
    }
    func spriteChoosen(animalSelected: Int, breedSelected: Int, colorSelected: Int) -> SKSpriteNode{
        for sprite in listOfCats{
            sprite.removeFromParent()
        }
        for sprite in listOfDogs{
            sprite.removeFromParent()
        }
        if animalSelected == 1{
            // marrom, amarelo, cinza
            // 0,1,2 -> raça 1
            // 3,4,5 -> raça 2
            // 6,7,8 -> raça 3
            return listOfDogs[colorSelected + 3 * breedSelected]
        }
        else{
            return listOfCats[colorSelected + 3 * breedSelected]
        }
    }
}
