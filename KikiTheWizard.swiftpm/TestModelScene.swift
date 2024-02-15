//
//  TestModelScene.swift
//  KikiTheWizard
//
//  Created by Larissa Okabayashi on 29/01/24.
//

import Foundation
import SpriteKit

@available(iOS 17.0, *)
class TestModelScene: SKScene{
    var background: SKSpriteNode = SKSpriteNode(imageNamed: "background")
    
    let wallpaper: SKSpriteNode = SKSpriteNode(imageNamed: "background")
    
    let ground: SKSpriteNode = SKSpriteNode(imageNamed: "ground")
    
    let kiki: SKSpriteNode = SKSpriteNode(imageNamed: "feitiço-1")
    
    let board: SKSpriteNode = SKSpriteNode(imageNamed: "board")
    
    let arrow180: SKSpriteNode = SKSpriteNode(imageNamed: "arrow-180")
    
    let arrow: SKSpriteNode = SKSpriteNode(imageNamed: "arrow")
    
    let box: SKSpriteNode = SKSpriteNode(imageNamed: "box-close")
    
    let topText = SKLabelNode(fontNamed: "Pixelify Sans")
    let auxText1 = SKLabelNode(fontNamed: "Pixelify Sans")
    let auxText2 = SKLabelNode(fontNamed: "Pixelify Sans")
    
    let inventoryTest = SKSpriteNode(imageNamed: "innventory-test")
    
    let kikiLabel = SKLabelNode(fontNamed: "Pixelify Sans")
    
    let contour = SKSpriteNode(imageNamed: "frame")
    let contour2 = SKSpriteNode(imageNamed: "frame")
    let contour3 = SKSpriteNode(imageNamed: "frame")
    let contour4 = SKSpriteNode(imageNamed: "frame")
    
    let catTest1 = SKSpriteNode(imageNamed: "cat-test")
    
    let catTest2 = SKSpriteNode(imageNamed: "cat-test2")
    
    let catTest3 = SKSpriteNode(imageNamed: "image 212")
    
    let catTest4 = SKSpriteNode(imageNamed: "image 211")
    
    private var currentNode: SKNode?
    
    var animalsMissed = 0
    
    var page: Int = 0
    
    let comment = SKSpriteNode(imageNamed: "comment")
    
    let kikiBlink = SKSpriteNode(imageNamed: "kiki-animation1")

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
    
    let animationIdleKiki: [SKTexture] = [
        SKTexture(imageNamed: "kiki-animation1"),
        SKTexture(imageNamed: "kiki-animation2"),
        SKTexture(imageNamed: "kiki-animation3")
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
        
        catTest3.position = CGPoint(x: view.frame.width / 1.075, y: 320)
        catTest3.name = "draggable-catTest3"
        addChild(catTest3)
        
        contour3.position = CGPoint(x: view.frame.width / 1.07, y: 320)
        addChild(contour3)
        
        catTest4.position = CGPoint(x: view.frame.width / 1.07, y: 140)
        catTest4.name = "draggable-catTest4"
        addChild(catTest4)
        
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
        
        topText.text = "Let's see if it works, put a cat or a dog inside the box"
        topText.fontSize = 30
        topText.position = CGPoint(x: 480, y: 690)
        topText.fontColor = UIColor.black
        topText.horizontalAlignmentMode = SKLabelHorizontalAlignmentMode.center
        topText.lineBreakMode = NSLineBreakMode.byWordWrapping
        topText.preferredMaxLayoutWidth = 800
        topText.numberOfLines = 3
        addChild(topText)
        
        auxText1.fontSize = 25
        auxText1.position = CGPoint(x: 750, y: 390)
        auxText1.fontColor = UIColor.black
        auxText1.horizontalAlignmentMode = SKLabelHorizontalAlignmentMode.center
        auxText1.lineBreakMode = NSLineBreakMode.byWordWrapping
        auxText1.preferredMaxLayoutWidth = 600
        auxText1.numberOfLines = 3
        auxText1.zPosition = -1
        addChild(auxText1)
        
        auxText2.fontSize = 25
        auxText2.position = CGPoint(x: 750, y: 260)
        auxText2.fontColor = UIColor.black
        auxText2.horizontalAlignmentMode = SKLabelHorizontalAlignmentMode.center
        auxText2.lineBreakMode = NSLineBreakMode.byWordWrapping
        auxText2.preferredMaxLayoutWidth = 600
        auxText2.numberOfLines = 3
        auxText2.zPosition = -1
        addChild(auxText2)
        
        sparkles.position = CGPoint(x: view.frame.width / 2, y: view.frame.height / 4.5)
        sparkles.zPosition = -1
        addChild(sparkles)
    
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
                    topText.fontSize = 25
                    topText.text = "Interpretability allows people to understand how decisions are made, making processes more transparent and accountable."
                    topText.preferredMaxLayoutWidth = 600
                    topText.numberOfLines = 5
                    topText.zPosition = 2
                    arrow.zPosition = 3
                    arrow.position = CGPoint(x: 1000, y: 250)
                    comment.zPosition = 1
                    kikiLabel.zPosition = 2
                    kikiBlink.zPosition = 1
                    page += 1
                }
                else if page == 3{
                    topText.text = "Interpreting the model, I realized that the dataset was biased, which is why the box incorrectly predicted that cats were dogs"
                    page += 1
                }
                else if page == 4{
                    topText.position = CGPoint(x: 750, y: 520)
                    topText.text = "To reduce bias in the Dataset we will:"
                    
                    auxText1.zPosition = 1
                    auxText1.text = "1. Make sure the training dataset is representative of the actual distribution of classes and features"
                    
                    auxText2.zPosition = 1
                    auxText2.text = "2. Increase the dataset to increase sample diversity, especially for underrepresented classes or groups."
                    page += 1
                }
                else if page == 5{
                    catTest1.removeFromParent()
                    catTest2.removeFromParent()
                    catTest3.removeFromParent()
                    catTest4.removeFromParent()
                    board.zPosition = 1
                    comment.zPosition = -1
                    kikiLabel.zPosition = -1
                    kikiBlink.zPosition = -1
                    auxText1.zPosition = -1
                    auxText2.zPosition = -1
                    inventoryTest.zPosition = -1
                    contour.zPosition = -1
                    contour2.zPosition = -1
                    contour3.zPosition = -1
                    contour4.zPosition = -1
                    arrow180.zPosition = -1
                    arrow.position = CGPoint(x: 1020, y: 700)
                    ground.size = CGSize(width: 1000, height: 1000)
                    ground.position = CGPoint(x: 597, y: 160)
                    kiki.position = CGPoint(x: 597, y: 417)
                    board.position = CGPoint(x: 597, y: 720)
                    
                    topText.fontSize = 30
                    topText.position = CGPoint(x: 520, y: 690)
                    topText.fontColor = UIColor.black
                    topText.horizontalAlignmentMode = SKLabelHorizontalAlignmentMode.center
                    topText.lineBreakMode = NSLineBreakMode.byWordWrapping
                    topText.preferredMaxLayoutWidth = 800
                    topText.numberOfLines = 2
                    topText.text = "Nice! the box has been improved, now let's test it"
                    box.position = CGPoint(x: 597, y: 217)
                    box.size = CGSize(width: 200, height: 200)
                    box.run(.animate(with: animationIdleBox, timePerFrame: 1))
                    
                    kiki.run(.animate(with: animationIdleMagic, timePerFrame: 0.5))
                   
                    sparkles.zPosition = 1
                    sparkles.run(.animate(with: animationIdleSparkles, timePerFrame: 0.3))
    
                    page += 1
                }
                else if page == 6{
                    let nextScene = buildYourAnimalScene()
                    nextScene.size = CGSize(width: 1194, height: 834)
                    nextScene.scaleMode = .aspectFill
                    view?.presentScene(nextScene)
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
                        animalsMissed += 1
                    }
                    else if separated[1] == "catTest2"{
                        let prediction = modelPredict(fileImg: "cat-test2")
                        topText.text = "Box says: It's a " + prediction + "!"
                        node.removeFromParent()
                        animalsMissed += 1
                    }
                    else if separated[1] == "dogTest1"{
                        let prediction = modelPredict(fileImg: "dog-test")
                        topText.text = "Box says: It's a " + prediction + "!"
                        node.removeFromParent()
                        animalsMissed += 1
                    }
                    else if separated[1] == "dogTest2"{
                        let prediction = modelPredict(fileImg: "dog-test2")
                        topText.text = "Box says: It's a " + prediction + "!"
                        node.removeFromParent()
                        animalsMissed += 1
                    }
                    arrow.zPosition = 1
                }
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
