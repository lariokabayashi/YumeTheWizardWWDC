//
//  GameController.swift
//  KikiTheWizard
//
//  Created by Larissa Okabayashi on 22/01/24.
//

import Foundation
import SpriteKit
import SwiftUI
import Metal

class GameScene: SKScene {
    
    var background: SKSpriteNode = SKSpriteNode(imageNamed: "background")
    
    let wallpaper: SKSpriteNode = SKSpriteNode(imageNamed: "background")
    
    let ground: SKSpriteNode = SKSpriteNode(imageNamed: "ground")
    
    let kiki: SKSpriteNode = SKSpriteNode(imageNamed: "kiki")
    
    let board: SKSpriteNode = SKSpriteNode(imageNamed: "board")
    
    let arrow: SKSpriteNode = SKSpriteNode(imageNamed: "arrow")
    
//    let topText = SKLabelNode(fontNamed: "Pixelify")
    
    var page: Int = 0
    
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
    
    let cat = SKSpriteNode(imageNamed: "image 84-17")
    let dog = SKSpriteNode(imageNamed: "image 84-8")
    
    override func didMove(to view: SKView) {
//        CTFontManagerRegisterFontsForURL(cfURL, CTFontManagerScope.process, nil)
        
        wallpaper.position = CGPoint(x: view.frame.width / 2, y: view.frame.height / 2)
        addChild(wallpaper)
        
        background.position = CGPoint(x: view.frame.width / 2, y: view.frame.height / 2)
        addChild(background)
        
        background.run(.repeatForever(.animate(with: animationIdle, timePerFrame: 0.5)))
        
        ground.size = CGSize(width: 1000, height: 1000)
        ground.position = CGPoint(x: view.frame.width / 2, y: 160)
        addChild(ground)

//        cat.color = UIColor.darkGray
//        cat.colorBlendFactor = 1
        
//        cat.zPosition = 1
//        cat.position =  CGPoint(x: view.frame.width / 2 - 100, y: view.frame.height / 2)
//        addChild(cat)
//        
//        let image = UIImage(cgImage: (cat.texture?.cgImage())!)
//        
//        let catColoredSprite = SKSpriteNode(texture:SKTexture(image: image))
//        
//        catColoredSprite.zPosition = 1
//        catColoredSprite.position =  CGPoint(x: view.frame.width / 2, y: view.frame.height / 2)
//        
//        let originalImage = UIImage(named: "image 84-17")?.withTintColor(.systemPink, renderingMode: .alwaysTemplate)
//        
//        let ColoredImageSprite = SKSpriteNode(texture:SKTexture(image: originalImage!))
//        ColoredImageSprite.position =  CGPoint(x: view.frame.width / 2, y: view.frame.height / 2)
//        ColoredImageSprite.zPosition = 1
//        addChild(ColoredImageSprite)
        
        kiki.position = CGPoint(x: view.frame.width / 2, y: view.frame.height / 2)
        addChild(kiki)
        
        board.position = CGPoint(x: view.frame.width / 2, y: 720)
        addChild(board)
        
        arrow.position = CGPoint(x: 1020, y: 700)
        arrow.name = "arrow"
        addChild(arrow)
        
//        arrow.color = UIColor.green
//        arrow.colorBlendFactor = 1
        
        let action = SKAction.colorize(with: UIColor.brown, colorBlendFactor: 1, duration: 1)
        
        arrow.run(action)
        
        let topText = getFont()
        
        topText.text = "Oi, meu nome é kiki, sou uma feiticeira aprendiz"
        topText.fontSize = 30
        topText.position = CGPoint(x: 580, y: 710)
        topText.fontColor = UIColor.black
        topText.horizontalAlignmentMode = SKLabelHorizontalAlignmentMode.center
        topText.lineBreakMode = NSLineBreakMode.byWordWrapping
        topText.preferredMaxLayoutWidth = 800
        topText.numberOfLines = 3
        addChild(topText)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let topText = getFont()
        
         for touch in touches {
              let location = touch.location(in: self)
              let touchedNode = atPoint(location)
              if touchedNode.name == "arrow" {
                  if page == 0{
                      topText.text = "Estou aprendendo um feitiço capaz de adivinhar o que tem dentro de uma caixa fechada"
                      topText.position = CGPoint(x: 580, y: 680)
                  }
                  else if page == 1{
                      topText.text = "Contudo estou tendo dificuldade em executá-lo, pois frequentemente ele falha"
                      topText.position = CGPoint(x: 580, y: 680)
                  }
                  else if page == 2{
                      topText.text = "Vou mostrar pra vocês"
                      topText.position = CGPoint(x: 580, y: 710)
                  }
                  else if page == 3{
                      topText.text = "Atualmente estou treinando  feitiço com um exemplo muito fácil, apenas para predizer se tem um gato ou um cachorro dentro da caixa"
                      topText.position = CGPoint(x: 580, y: 670)
                  }
                  else if page == 4{
                      topText.text = "Primeiramente, vamos coletar dados de gatos e cachorros"
                      topText.position = CGPoint(x: 580, y: 710)
                  }
                  else if page == 5{
                      let nextScene = InventoryBiasScene()
                      nextScene.size = CGSize(width: 1194, height: 834)
                      nextScene.scaleMode = .aspectFill
//                      let nextScene = SKScene(fileNamed: "InventoryBiasScene")
                      view?.presentScene(nextScene)
                  }
                  page += 1
              }
         }
    }
    func getFont() -> SKLabelNode{
            let cfURL = Bundle.main.url(forResource: "media/Pixelify", withExtension: "ttf")! as CFURL

            CTFontManagerRegisterFontsForURL(cfURL, CTFontManagerScope.process, nil)
            
            let topText = SKLabelNode(fontNamed: "Pixelify")
            return topText
        }
}
