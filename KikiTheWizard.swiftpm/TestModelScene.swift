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
    
    var currentNode: SKSpriteNode?
    
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
        kikiBlink.run(.repeatForever(.animate(with: animationIdleKiki2, timePerFrame: 0.5)))
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
        
        auxText2.fontSize = 30
        auxText2.position = CGPoint(x: 750, y: 290)
        auxText2.fontColor = UIColor.black
        auxText2.horizontalAlignmentMode = SKLabelHorizontalAlignmentMode.center
        auxText2.lineBreakMode = NSLineBreakMode.byWordWrapping
        auxText2.preferredMaxLayoutWidth = 600
        auxText2.numberOfLines = 3
        auxText2.zPosition = -1
        addChild(auxText2)
    
        tree.position = CGPoint(x: 170, y: 500)
        addChild(tree)
        
        bee.position = CGPoint(x: 270, y: 400)
        addChild(bee)
        bee.run(.repeatForever(.animate(with: animationIdleBee, timePerFrame: 0.3)))
        
        flowers.position = CGPoint(x: 870, y: 400)
        addChild(flowers)
        flowers.run(.repeatForever(.animate(with: animationIdleFlowers, timePerFrame: 0.3)))
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
                    tree.zPosition = -1
                    bee.zPosition = -1
                    flowers.zPosition = -1
                    topText.position = CGPoint(x: 750, y: 350)
                    topText.fontSize = 25
                    topText.text = "Interpretability in Machine Learning refers to the ability of a human to understand and explain the decisions or outcomes of an ML model"
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
                    topText.fontSize = 30
                    topText.position = CGPoint(x: 735, y: 420)
                    topText.text = "To reduce bias in the Dataset we will:"
                    
                    auxText2.zPosition = 1
                    auxText2.text = "Increase the dataset to increase sample diversity, especially for underrepresented classes or groups."
                    page += 1
                }
                else if page == 5{
                    let nextScene = IncreaseDatasetScene()
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
                    self.currentNode = node as? SKSpriteNode
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
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?){

        if (page == 0){
            if let touch = touches.first, let node = currentNode {
                if ((node.position.x > box.position.x - 50 && node.position.x < box.position.x + 50) && (node.position.y > box.position.y - 50 && node.position.y < box.position.y + 50) ){
                        SoundWrong()
                        let img = UIImage(cgImage: (node.texture?.cgImage())!)
                        let prediction = modelPredict(fileImg: img)
                        topText.text = "Box says: It's a " + prediction + "!"
                        node.removeFromParent()
                        arrow.zPosition = 1
                }
            }
        }
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.currentNode = nil
    }
    
    func modelPredict(fileImg: UIImage) -> String{
        do{
            let model = try KikiTheWizardImageClassifier_1(contentsOf: KikiTheWizardImageClassifier_1.urlOfModelInThisBundle).model
            let prediction = predict(model: model, image: fileImg)
            print(prediction)
            return prediction ?? ""
          
        }catch {
            print(error.localizedDescription)
        }
        return ""
    }
    
    func SoundWrong(){
        let audioNode = SKAudioNode(fileNamed: "media/wrong")
        audioNode.autoplayLooped = false
        self.addChild(audioNode)
        let playAction = SKAction.play()
        audioNode.run(playAction)
    }
}
