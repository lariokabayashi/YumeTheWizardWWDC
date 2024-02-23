import SwiftUI
import AVFAudio
import SpriteKit

@available(iOS 17.0, *)
struct ContentView: View {
    @State var audioPlayer: AVAudioPlayer!
    
    var scene: SKScene {
        let scene = GameScene()
//        scene.size = CGSize(width: 1366, height: 768)
        scene.size = CGSize(width: scene.size.width, height: scene.size.height)
//        scene.size = CGSize(width: 1366, height: 1024)
        scene.scaleMode = .resizeFill
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
            
            let sound = Bundle.main.path(forResource: "media/audio_hero_Tiny-Town_SIPML_C-0653", ofType: "mp3")
            self.audioPlayer = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
            self.audioPlayer.volume = 0.3
            self.audioPlayer.numberOfLoops = 4
            self.audioPlayer.play()
        }
    }
}
