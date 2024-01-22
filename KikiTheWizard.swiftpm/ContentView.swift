import SwiftUI
import SpriteKit

struct ContentView: View {
    var gameScene: SKScene {
        let gameScene = SKScene(fileNamed: "GameController")
        gameScene?.scaleMode = .aspectFit
        
        return gameScene!
    }
    var body: some View {
        GeometryReader { geometry in
            SpriteView(scene: gameScene)
            .frame(width: geometry.size.width, height: geometry.size.height)
        }.edgesIgnoringSafeArea(.all)
    }
}
