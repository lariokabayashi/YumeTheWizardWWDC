//
//  buildYourAnimalScene.swift
//  KikiTheWizard
//
//  Created by Larissa Okabayashi on 11/02/24.
//

import Foundation
import SpriteKit
import SwiftUI
import Photos

protocol SelectedPhotoDelegate: AnyObject {
    func addSelectedImg(img: UIImage)
}

@available(iOS 17.0, *)
class buildYourAnimalScene: SKScene, ObservableObject, SelectedPhotoDelegate {
    
//    static let shared = buildYourAnimalScene()
    var background: SKSpriteNode = SKSpriteNode(imageNamed: "background")
    let wallpaper: SKSpriteNode = SKSpriteNode(imageNamed: "background")
    var board: SKSpriteNode = SKSpriteNode(imageNamed: "boardBuild")
    var board2: SKSpriteNode = SKSpriteNode(imageNamed: "image 203")
    var board3: SKSpriteNode = SKSpriteNode(imageNamed: "image 204")
    var kikiSays: SKSpriteNode =  SKSpriteNode(imageNamed: "kikiSays")
    var frameBuild: SKSpriteNode = SKSpriteNode(imageNamed: "Group 20")
    var frameNotSelected: SKSpriteNode = SKSpriteNode(imageNamed: "image 202")
    var frameNotSelected2: SKSpriteNode = SKSpriteNode(imageNamed: "image 202")
    var frameNotSelected3: SKSpriteNode = SKSpriteNode(imageNamed: "image 202")
    var frameNotSelected4: SKSpriteNode = SKSpriteNode(imageNamed: "image 202")
    var frameNotSelected5: SKSpriteNode = SKSpriteNode(imageNamed: "image 202")
    var frameSelected: SKSpriteNode = SKSpriteNode(imageNamed: "image 208")
    var downText: SKLabelNode = SKLabelNode(fontNamed: "Pixelify Sans")
    var PixelWorldText: SKLabelNode = SKLabelNode(fontNamed: "Pixelify Sans")
    var RealWorldText: SKLabelNode = SKLabelNode(fontNamed: "Pixelify Sans")
    var UploadText: SKLabelNode = SKLabelNode(fontNamed: "Pixelify Sans")
    var page: Int = 0
    var animalSelected: Int = 1
    var breedSelected: Int = 0
    var colorSelected: Int = 0
    var spriteSel: SKSpriteNode = SKSpriteNode(imageNamed: "image 212")
    var done:SKSpriteNode = SKSpriteNode(imageNamed: "done")
    
    let dog1: SKSpriteNode = SKSpriteNode(imageNamed: "ReplaceDog1")
    let dog2: SKSpriteNode = SKSpriteNode(imageNamed: "ReplaceDog2")
    let dog3: SKSpriteNode = SKSpriteNode(imageNamed: "ReplaceDog3")
    let cat1: SKSpriteNode = SKSpriteNode(imageNamed: "image 212")
    let cat2: SKSpriteNode = SKSpriteNode(imageNamed: "image 216")
    let cat3: SKSpriteNode = SKSpriteNode(imageNamed: "image 220")
    
    let Realdog1: SKSpriteNode = SKSpriteNode(imageNamed: "dog1")
    let Realdog2: SKSpriteNode = SKSpriteNode(imageNamed: "dog2")
    let Realdog3: SKSpriteNode = SKSpriteNode(imageNamed: "dog3")
    let Realcat1: SKSpriteNode = SKSpriteNode(imageNamed: "cat1")
    let Realcat2: SKSpriteNode = SKSpriteNode(imageNamed: "cat2")
    let Realcat3: SKSpriteNode = SKSpriteNode(imageNamed: "cat3")
    
    let photoGallery: SKSpriteNode = SKSpriteNode(imageNamed: "Group 26")
    
    let squareSelected: SKSpriteNode = SKSpriteNode(imageNamed: "Rectangle 4")
    
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
    
    var selectedSpriteImg: SKSpriteNode?

//    weak var SelectedSprite: SelectedPhotoDelegate?
    
    override func didMove(to view: SKView) {
        
        wallpaper.position = CGPoint(x: view.frame.width / 2, y: view.frame.height / 2)
        addChild(wallpaper)
        
        background.position = CGPoint(x: view.frame.width / 2, y: view.frame.height / 2)
        addChild(background)
        background.run(.repeatForever(.animate(with: animationIdle, timePerFrame: 0.5)))

        frameBuild.position = CGPoint(x: view.frame.width / 2, y: view.frame.height / 2)
        addChild(frameBuild)
        
        squareSelected.position = CGPoint(x: 400, y: 270)
        squareSelected.zPosition = -1
        addChild(squareSelected)
        
        board.position = CGPoint(x: view.frame.width / 2, y: view.frame.height / 2)
        board.size = CGSize(width: board.size.width * 1.1, height: board.size.height * 1.1)
        addChild(board)
        
        board2.position = CGPoint(x: view.frame.width / 1.95, y: view.frame.height / 2.05)
        board2.zPosition = -1
        board2.size = CGSize(width: board2.size.width * 1.1, height: board2.size.height  * 1.1)
        addChild(board2)
        
        board3.position = CGPoint(x: view.frame.width / 2, y: view.frame.height / 2)
        board3.zPosition = -1
        board3.size = CGSize(width: board3.size.width  * 1.1, height: board3.size.height  * 1.1)
        addChild(board3)
        
        frameNotSelected3.position = CGPoint(x: 400, y: 270)
        addChild(frameNotSelected3)
        frameNotSelected3.name = "dog1-"
        
        frameNotSelected.position = CGPoint(x: 600, y: 270)
        addChild(frameNotSelected)
        frameNotSelected.name = "dog2-"
        
        frameNotSelected2.position = CGPoint(x: 800, y: 270)
        addChild(frameNotSelected2)
        frameNotSelected2.name = "dog3-"
        
        frameSelected.position = CGPoint(x: 405, y: 470)
        addChild(frameSelected)
        frameSelected.name = "cat1-"
        
        frameNotSelected4.position = CGPoint(x: 600, y: 470)
        addChild(frameNotSelected4)
        frameNotSelected4.name = "cat2-"
        
        frameNotSelected5.position = CGPoint(x: 800, y: 470)
        addChild(frameNotSelected5)
        frameNotSelected5.name = "cat3-"
        
        dog1.position = CGPoint(x: 407, y: 270)
        addChild(dog1)
        dog1.name = "dog1-choosable"
        dog2.position = CGPoint(x: 600, y: 270)
        addChild(dog2)
        dog2.name = "dog2-choosable"
        dog3.position = CGPoint(x: 800, y: 270)
        addChild(dog3)
        dog3.name = "dog3-choosable"
        
        cat1.position = CGPoint(x: 400, y: 470)
        cat1.name = "cat1-choosable"
        addChild(cat1)
        cat2.position = CGPoint(x: 600, y: 470)
        cat2.name = "cat2-choosable"
        addChild(cat2)
        cat3.position = CGPoint(x: 800, y: 470)
        cat3.name = "cat3-choosable"
        addChild(cat3)
        
        Realdog1.position = CGPoint(x: 407, y: 270)
        Realdog1.zPosition = -1
        addChild(Realdog1)
        Realdog1.name = "dog1-choosable"
        
        Realdog2.position = CGPoint(x: 600, y: 270)
        Realdog2.zPosition = -1
        addChild(Realdog2)
        Realdog2.name = "dog2-choosable"
        
        Realdog3.position = CGPoint(x: 800, y: 270)
        Realdog3.zPosition = -1
        addChild(Realdog3)
        Realdog3.name = "dog3-choosable"
        
        Realcat1.position = CGPoint(x: 400, y: 470)
        Realcat1.zPosition = -1
        Realcat1.name = "cat1-choosable"
        addChild(Realcat1)
        
        Realcat2.position = CGPoint(x: 600, y: 470)
        Realcat2.zPosition = -1
        Realcat2.name = "cat2-choosable"
        addChild(Realcat2)
        
        Realcat3.position = CGPoint(x: 800, y: 470)
        Realcat3.zPosition = -1
        Realcat3.name = "cat3-choosable"
        addChild(Realcat3)
        
        kikiSays.position = CGPoint(x: view.frame.width / 2, y: 130)
        addChild(kikiSays)
        kikiSays.zPosition = -1
        
        done.position = CGPoint(x: view.frame.width / 1.25, y: 130)
        addChild(done)
        done.name = "done-"
        
        downText.position = CGPoint(x: 720, y: 40)
        downText.text = "Choose any cat or dog from the pixel world or the real world to test if the spell works."
        downText.numberOfLines = 3
        downText.horizontalAlignmentMode = SKLabelHorizontalAlignmentMode.center
        downText.verticalAlignmentMode = SKLabelVerticalAlignmentMode.center
        downText.lineBreakMode = NSLineBreakMode.byWordWrapping
        downText.preferredMaxLayoutWidth = 700
        downText.fontColor = .black
        addChild(downText)
        downText.zPosition = -1
        
        PixelWorldText.position = CGPoint(x: view.frame.width / 2.26, y: view.frame.height / 1.4)
        PixelWorldText.text = "Pixel World"
        PixelWorldText.fontSize = 25
        PixelWorldText.fontColor = .white
        PixelWorldText.name = "PixelWorldText-"
        addChild(PixelWorldText)
        
        RealWorldText.position = CGPoint(x: view.frame.width / 1.65, y: view.frame.height / 1.4)
        RealWorldText.text = "Real World"
        RealWorldText.fontColor = .black
        RealWorldText.fontSize = 25
        RealWorldText.name = "RealWorldText-"
        addChild(RealWorldText)
        
        UploadText.position = CGPoint(x: view.frame.width / 1.35, y: view.frame.height / 1.4)
        UploadText.text = "Upload"
        UploadText.fontColor = .black
        UploadText.name = "uploadText-"
        UploadText.fontSize = 25
        addChild(UploadText)
        
        photoGallery.position = CGPoint(x: 600, y: 400)
        photoGallery.zPosition = -1
        photoGallery.name = "photoGallery-"
        addChild(photoGallery)
    }
    
    func addSelectedImg(img: UIImage){
        selectedSpriteImg = SKSpriteNode(texture: SKTexture(image: img))
        selectedSpriteImg?.position = CGPoint(x: 600, y: 400)
        addChild(selectedSpriteImg!)
        selectedSpriteImg?.zPosition = -1
        selectedSpriteImg?.size = CGSize(width: 100, height: 100)
        spriteSel = selectedSpriteImg!
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        super.touchesBegan(touches, with: event)
        
        for touch in touches {
            let location = touch.location(in: self)
            let touchedNode = atPoint(location)
            let nodeName = touchedNode.name ?? "-"
            let fullNameArr = nodeName.components(separatedBy: "-")
            let lastName: String = fullNameArr[1]
            let firstName: String = fullNameArr[0]
            
            if touchedNode.name == "PixelWorldText-"{
                page = 0
                frameSelected.zPosition = 0
                frameNotSelected.zPosition = 0
                frameNotSelected2.zPosition = 0
                frameNotSelected3.zPosition = 0
                frameNotSelected4.zPosition = 0
                frameNotSelected5.zPosition = 0
                dog1.zPosition = 0
                dog2.zPosition = 0
                dog3.zPosition = 0
                cat1.zPosition = 0
                cat2.zPosition = 0
                cat3.zPosition = 0
                squareSelected.zPosition = -1
                Realcat1.zPosition = -1
                Realcat2.zPosition = -1
                Realcat3.zPosition = -1
                Realdog1.zPosition = -1
                Realdog2.zPosition = -1
                Realdog3.zPosition = -1
                board.zPosition = 0
                board3.zPosition = -1
                board2.zPosition = -1
                PixelWorldText.fontColor = .white
                UploadText.fontColor = .black
                RealWorldText.fontColor = .black
                photoGallery.zPosition = -1
                selectedSpriteImg?.zPosition = -1
            }
            else if touchedNode.name == "RealWorldText-"{
                spriteSel = Realdog1
                page = 1
                frameSelected.zPosition = -1
                frameNotSelected.zPosition = -1
                frameNotSelected2.zPosition = -1
                frameNotSelected3.zPosition = -1
                frameNotSelected4.zPosition = -1
                frameNotSelected5.zPosition = -1
                dog1.zPosition = -1
                dog2.zPosition = -1
                dog3.zPosition = -1
                cat1.zPosition = -1
                cat2.zPosition = -1
                cat3.zPosition = -1
                squareSelected.zPosition = 1
                Realcat1.zPosition = 0
                Realcat2.zPosition = 0
                Realcat3.zPosition = 0
                Realdog1.zPosition = 0
                Realdog2.zPosition = 0
                Realdog3.zPosition = 0
                board.zPosition = -1
                board2.zPosition = 0
                board3.zPosition = -1
                PixelWorldText.fontColor = .black
                RealWorldText.fontColor = .white
                UploadText.fontColor = .black
                photoGallery.zPosition = -1
                selectedSpriteImg?.zPosition = -1
            }
            else if touchedNode.name == "uploadText-"{
                frameSelected.zPosition = -1
                frameNotSelected.zPosition = -1
                frameNotSelected2.zPosition = -1
                frameNotSelected3.zPosition = -1
                frameNotSelected4.zPosition = -1
                frameNotSelected5.zPosition = -1
                dog1.zPosition = -1
                dog2.zPosition = -1
                dog3.zPosition = -1
                cat1.zPosition = -1
                cat2.zPosition = -1
                cat3.zPosition = -1
                page = 2
                board2.zPosition = -1
                board3.zPosition = 0
                photoGallery.zPosition = 0
                Realcat1.zPosition = -1
                Realcat2.zPosition = -1
                Realcat3.zPosition = -1
                Realdog1.zPosition = -1
                Realdog2.zPosition = -1
                Realdog3.zPosition = -1
                squareSelected.zPosition = -1
                RealWorldText.fontColor = .black
                UploadText.fontColor = .white
                PixelWorldText.fontColor = .black
            }
            
            else if lastName == "choosable"{
                spriteSel = touchedNode as! SKSpriteNode
                selectedSpriteImg = spriteSel
                if page == 0{
                    let frame = findFrame(name: firstName)
                    frame.position = frameSelected.position
                    frameSelected.position = touchedNode.position
                    frameSelected.zPosition = 0
                    frame.name = frameSelected.name
                    frameSelected.name = firstName
                }
                else if page == 1{
                    squareSelected.position = touchedNode.position
                }
            }
            else if touchedNode.name == "photoGallery-"{
                // Get the current authorization state.
                let status = PHPhotoLibrary.authorizationStatus()
                if (status == PHAuthorizationStatus.notDetermined) {
                    PHPhotoLibrary.requestAuthorization(for: .readWrite) {
                        [weak self] (status:PHAuthorizationStatus) in
                        print("called");
                    }
                }
                
                else if (status == PHAuthorizationStatus.authorized) {
                    // Present the SwiftUI view
                    if let viewController = self.view?.window?.rootViewController {
                        let swiftUIView = ImagePickerView(destinationScene: self, sourceType: .photoLibrary)
                        let hostingController = UIHostingController(rootView: swiftUIView)
                        // Customize the presentation if needed
                        hostingController.modalPresentationStyle = .fullScreen
                        viewController.present(hostingController, animated: true, completion: nil)
                    }
                }

                else if (status == PHAuthorizationStatus.denied) {
                    // Access has been denied.
                }
            }
            
            else if touchedNode.name == "done-"{
                if let view = self.view {
                    selectedSpriteImg = spriteSel
                    let scene = TestModelWithoutBiasScene()
                    selectedSpriteImg?.removeFromParent()
                    scene.addSelectedImg(sprite: selectedSpriteImg)
                    scene.size = CGSize(width: 1194, height: 834)
                    scene.scaleMode = .aspectFill
                    view.presentScene(scene)
                
                }
            }
        }
    }
    func findFrame(name: String)-> SKSpriteNode{
        let arrayFrames = [frameSelected, frameNotSelected, frameNotSelected2, frameNotSelected3, frameNotSelected4, frameNotSelected5]
        for frame in arrayFrames{
            let fullNameArr = frame.name?.components(separatedBy: "-")
            let firstName: String = fullNameArr?[0] ?? ""
            if name == firstName{
                return frame
            }
        }
        return SKSpriteNode()
    }
}


//
//  ImagePickerView.swift
//  MeNota
//
//  Created by Larissa Okabayashi on 25/05/23.
//

import SwiftUI
import UIKit


@available(iOS 17.0, *)
struct ImagePickerView: UIViewControllerRepresentable {
    
    weak var destinationScene:SelectedPhotoDelegate?
    var selectedImage: UIImage?
    
    @Environment(\.presentationMode) var isPresented
    var sourceType: UIImagePickerController.SourceType
        
    func makeUIViewController(context: Context) -> UIImagePickerController {
        let imagePicker = UIImagePickerController()
        imagePicker.sourceType = self.sourceType
        imagePicker.delegate = context.coordinator // confirming the delegate
        return imagePicker
    }

    func updateUIViewController(_ uiViewController: UIImagePickerController, context: Context) {

    }

    // Connecting the Coordinator class with this struct
    func makeCoordinator() -> Coordinator {
        return Coordinator(picker: self, 
                           delegate: destinationScene)
    }
}

@available(iOS 17.0, *)
class Coordinator: NSObject, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    var picker: ImagePickerView
    weak var photoDelegate: SelectedPhotoDelegate?
    
    init(picker: ImagePickerView, delegate: SelectedPhotoDelegate?) {
        self.picker = picker
        self.photoDelegate = delegate
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        guard let selectedImage = info[.originalImage] as? UIImage else { return }
        self.picker.selectedImage = selectedImage
        self.picker.isPresented.wrappedValue.dismiss()
        self.photoDelegate?.addSelectedImg(img: selectedImage)
    }
    
}

