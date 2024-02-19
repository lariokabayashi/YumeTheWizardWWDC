import SwiftUI
import SpriteKit

@available(iOS 17.0, *)
struct ContentView: View {
    
    var scene: SKScene {
        let scene = buildYourAnimalScene()
        scene.size = CGSize(width: 1194, height: 834)
        scene.scaleMode = .aspectFill
        return scene
    }
    
    
    var body: some View {
        
        GeometryReader { geometry in
            SpriteView(scene: scene)
            .frame(width: geometry.size.width, height: geometry.size.height)
        }.edgesIgnoringSafeArea(.all)
        .onAppear {
            Bundle.main.url(forResource: "media/KikiTheWizardImageClassifier", withExtension:"mlmodel")
            
            let cfURL = Bundle.main.url(forResource: "media/Pixelify", withExtension: "ttf")! as CFURL

            CTFontManagerRegisterFontsForURL(cfURL, CTFontManagerScope.process, nil)
        }
    }
}
