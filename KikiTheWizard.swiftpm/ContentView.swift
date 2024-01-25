import SwiftUI
import SpriteKit

struct ContentView: View {
    var scene: SKScene {
        let scene = GameScene()
        scene.size = CGSize(width: 1194, height: 834)
        scene.scaleMode = .aspectFill
        return scene
    }
    
//    var gameScene: SKScene {
//        let gameScene = SKScene(fileNamed: "GameScene")
//        gameScene?.scaleMode = .aspectFit
//
//        return gameScene
//      }
    
    var body: some View {
        GeometryReader { geometry in
            SpriteView(scene: scene)
            .frame(width: geometry.size.width, height: geometry.size.height)
        }.edgesIgnoringSafeArea(.all)
        .onAppear {
            Bundle.main.url(forResource: "media/KikiTheWizardImageClassifier 1", withExtension:"mlmodel")
            Bundle.main.url(forResource: "media/Pixelify", withExtension:"ttf")
        }
    }
}
