//
//  TestModelScene.swift
//  KikiTheWizard
//
//  Created by Larissa Okabayashi on 29/01/24.
//

import Foundation
import SpriteKit

class TestModelScene: SKScene{
    var background: SKSpriteNode = SKSpriteNode(imageNamed: "background")
    
    let wallpaper: SKSpriteNode = SKSpriteNode(imageNamed: "background")
    
    let ground: SKSpriteNode = SKSpriteNode(imageNamed: "ground")
    
    let kiki: SKSpriteNode = SKSpriteNode(imageNamed: "kiki-in-front")
    
    let board: SKSpriteNode = SKSpriteNode(imageNamed: "board")
    
    let arrow180: SKSpriteNode = SKSpriteNode(imageNamed: "arrow-180")
    
    let arrow: SKSpriteNode = SKSpriteNode(imageNamed: "arrow")
    
    let box: SKSpriteNode = SKSpriteNode(imageNamed: "box-close")
    
    let topText = SKLabelNode(fontNamed: "Pixelify")
    
    let inventoryTest = SKSpriteNode(imageNamed: "innventory-test")
    
    let kikiLabel = SKLabelNode(fontNamed: "Pixelify")
    
    let contour = SKSpriteNode(imageNamed: "frame")
    let contour2 = SKSpriteNode(imageNamed: "frame")
    let contour3 = SKSpriteNode(imageNamed: "frame")
    let contour4 = SKSpriteNode(imageNamed: "frame")
    
    let catTest1 = SKSpriteNode(imageNamed: "cat-test")
    
    let catTest2 = SKSpriteNode(imageNamed: "cat-test2")
    
    let dogTest1 = SKSpriteNode(imageNamed: "dog-test")
    
    let dogTest2 = SKSpriteNode(imageNamed: "dog-test2")
    
    private var currentNode: SKNode?
    
    var animalsMissed = 0
    
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
        
        catTest1.position = CGPoint(x: view.frame.width / 1.075, y: 680)
        catTest1.name = "draggable-catTest1"
        addChild(catTest1)
        
        contour.position = CGPoint(x: view.frame.width / 1.07, y: 680)
        addChild(contour)
        
        catTest2.position = CGPoint(x: view.frame.width / 1.08, y: 500)
        catTest2.name = "draggable-catTest2"
        addChild(catTest2)
        
        contour2.position = CGPoint(x: view.frame.width / 1.07, y: 500)
        addChild(contour2)
        
        dogTest1.position = CGPoint(x: view.frame.width / 1.075, y: 320)
        dogTest1.name = "draggable-dogTest1"
        addChild(dogTest1)
        
        contour3.position = CGPoint(x: view.frame.width / 1.07, y: 320)
        addChild(contour3)
        
        dogTest2.position = CGPoint(x: view.frame.width / 1.07, y: 140)
        dogTest2.name = "draggable-dogTest2"
        addChild(dogTest2)
        
        contour4.position = CGPoint(x: view.frame.width / 1.07, y: 140)
        addChild(contour4)
        
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
        
        topText.text = "Vamos ver se ele funciona, coloque dentro da caixa algum gato ou cachorro"
        topText.fontSize = 30
        topText.position = CGPoint(x: 480, y: 690)
        topText.fontColor = UIColor.black
        topText.horizontalAlignmentMode = SKLabelHorizontalAlignmentMode.center
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
                if page == 0{
                    topText.text = "Saw? The spell isn't working"
                    page += 1
                }
                else if page == 1{
                    topText.text = "I think it's because I didn't apply interpretability."
                    page += 1
                }
                else if page == 2{
                    board.zPosition = -1
                    topText.position = CGPoint(x: 750, y: 350)
                    topText.fontSize = 35
                    topText.text = "Interpretability allows people to understand how decisions are made, making processes more transparent and accountable."
                    topText.preferredMaxLayoutWidth = 600
                    topText.numberOfLines = 5
                    topText.zPosition = 2
                    arrow.position = CGPoint(x: 920, y: 300)
                    comment.zPosition = 1
                    kikiLabel.zPosition = 2
                    kikiBlink.zPosition = 1
                }
            }
        }
        if let touch = touches.first {
            let location = touch.location(in: self)
            
            let touchedNodes = self.nodes(at: location)
            for node in touchedNodes.reversed() {
                let nodeName = node.name ?? "-"
                let separated = nodeName.components(separatedBy: "-")
                if separated[0] == "draggable" {
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
                if ((node.position.x > box.position.x - 50 && node.position.x < box.position.x + 50) && (node.position.y > box.position.y - 50 && node.position.y < box.position.y + 50) ){
                    let nodeName = node.name ?? "draggable-"
                    let separated = nodeName.components(separatedBy: "-")
                    if separated[1] == "catTest1"{
                        let prediction = modelPredict(fileImg: "cat-test")
                        topText.text = "Box says: It's a " + prediction + "!"
                        node.removeFromParent()
                    }
                    else if separated[1] == "catTest2"{
                        let prediction = modelPredict(fileImg: "cat-test2")
                        topText.text = "Box says: It's a " + prediction + "!"
                        node.removeFromParent()
                    }
                    else if separated[1] == "dogTest1"{
                        let prediction = modelPredict(fileImg: "dog-test")
                        topText.text = "Box says: It's a " + prediction + "!"
                        node.removeFromParent()
                    }
                    else if separated[1] == "dogTest2"{
                        let prediction = modelPredict(fileImg: "dog-test2")
                        topText.text = "Box says: It's a " + prediction + "!"
                        node.removeFromParent()
                    }
                    animalsMissed += 1
                }
            }
            if animalsMissed == 4{
                topText.text = "Saw? The spell isn't working"
                arrow.zPosition = 1
            }
        }
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.currentNode = nil
    }
    
    func modelPredict(fileImg: String)-> String{
        do{
            let model = try KikiTheWizardImageClassifier_1(contentsOf: KikiTheWizardImageClassifier_1.urlOfModelInThisBundle).model
            let prediction = predict(model: model, image: UIImage.init(named: fileImg)!)
            print(prediction)
            return prediction ?? ""
          
        }catch {
            print(error.localizedDescription)
        }
        return ""
    }
}
