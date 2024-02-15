//
//  predict.swift
//  KikiTheWizard
//
//  Created by Larissa Okabayashi on 26/01/24.
//

import Foundation
import UIKit
import CoreML
import Vision

@available(iOS 17.0, *)
func predict(model: MLModel, image: UIImage) -> String? {
    let imageConstraint = model.modelDescription.inputDescriptionsByName["image"]!.imageConstraint!
    
        do{
        
            let imageOptions: [MLFeatureValue.ImageOption: Any] = [
                .cropAndScale: VNImageCropAndScaleOption.scaleFill.rawValue
            ]
            let featureValue = try MLFeatureValue(cgImage: image.cgImage!, constraint: imageConstraint, options: imageOptions)
            let featureProviderDict = try MLDictionaryFeatureProvider(dictionary: ["image" : featureValue])
            let prediction = try model.prediction(from: featureProviderDict)
            let value = prediction.featureValue(for: "target")!.stringValue
            if value == "Dogs" || value == "dogs" {
                return "Dog"
            }
            else{
                return "Cat"
            }
        }catch(let error){
            print("error is \(error.localizedDescription)")
        }
        return nil
    }


