//
// ModelWithoutBias.swift
//
// This file was automatically generated and should not be edited.
//

import CoreML


/// Model Prediction Input Type
@available(macOS 14.0, iOS 17.0, tvOS 17.0, *)
@available(watchOS, unavailable)
class ModelWithoutBiasInput : MLFeatureProvider {

    /// image as color (kCVPixelFormatType_32BGRA) image buffer, 360 pixels wide by 360 pixels high
    var image: CVPixelBuffer

    var featureNames: Set<String> {
        get {
            return ["image"]
        }
    }
    
    func featureValue(for featureName: String) -> MLFeatureValue? {
        if (featureName == "image") {
            return MLFeatureValue(pixelBuffer: image)
        }
        return nil
    }
    
    init(image: CVPixelBuffer) {
        self.image = image
    }

    convenience init(imageWith image: CGImage) throws {
        self.init(image: try MLFeatureValue(cgImage: image, pixelsWide: 360, pixelsHigh: 360, pixelFormatType: kCVPixelFormatType_32BGRA, options: nil).imageBufferValue!)
    }

    convenience init(imageAt image: URL) throws {
        self.init(image: try MLFeatureValue(imageAt: image, pixelsWide: 360, pixelsHigh: 360, pixelFormatType: kCVPixelFormatType_32BGRA, options: nil).imageBufferValue!)
    }

    func setImage(with image: CGImage) throws  {
        self.image = try MLFeatureValue(cgImage: image, pixelsWide: 360, pixelsHigh: 360, pixelFormatType: kCVPixelFormatType_32BGRA, options: nil).imageBufferValue!
    }

    func setImage(with image: URL) throws  {
        self.image = try MLFeatureValue(imageAt: image, pixelsWide: 360, pixelsHigh: 360, pixelFormatType: kCVPixelFormatType_32BGRA, options: nil).imageBufferValue!
    }

}


/// Model Prediction Output Type
@available(macOS 14.0, iOS 17.0, tvOS 17.0, *)
@available(watchOS, unavailable)
class ModelWithoutBiasOutput : MLFeatureProvider {

    /// Source provided by CoreML
    private let provider : MLFeatureProvider

    /// target as string value
    var target: String {
        return self.provider.featureValue(for: "target")!.stringValue
    }

    /// targetProbability as dictionary of strings to doubles
    var targetProbability: [String : Double] {
        return self.provider.featureValue(for: "targetProbability")!.dictionaryValue as! [String : Double]
    }

    var featureNames: Set<String> {
        return self.provider.featureNames
    }
    
    func featureValue(for featureName: String) -> MLFeatureValue? {
        return self.provider.featureValue(for: featureName)
    }

    init(target: String, targetProbability: [String : Double]) {
        self.provider = try! MLDictionaryFeatureProvider(dictionary: ["target" : MLFeatureValue(string: target), "targetProbability" : MLFeatureValue(dictionary: targetProbability as [AnyHashable : NSNumber])])
    }

    init(features: MLFeatureProvider) {
        self.provider = features
    }
}


/// Class for model loading and prediction
@available(macOS 14.0, iOS 17.0, tvOS 17.0, *)
@available(watchOS, unavailable)
class ModelWithoutBias {
    let model: MLModel

    /// URL of model assuming it was installed in the same bundle as this class
    class var urlOfModelInThisBundle : URL {
        let resPath = Bundle(for:self).url(forResource: "media/ModelWithoutBias", withExtension: "mlmodel")!
        do{
            let compiledModelURL = try MLModel.compileModel(at: resPath)
            let permanentURL = try FileManager.default.url(for: .applicationSupportDirectory, in: .userDomainMask, appropriateFor: nil, create: true).appendingPathComponent(compiledModelURL.lastPathComponent)
            _ = try FileManager.default.replaceItemAt(permanentURL, withItemAt: compiledModelURL)

        }catch{
            print(error)
        }
        let bundle = Bundle(for: self)
        return bundle.url(forResource: "media/KikiTheWizardImageClassifier", withExtension:"mlmodelc")!
    }
    /**
        Construct ModelWithoutBias instance with an existing MLModel object.

        Usually the application does not use this initializer unless it makes a subclass of ModelWithoutBias.
        Such application may want to use `MLModel(contentsOfURL:configuration:)` and `ModelWithoutBias.urlOfModelInThisBundle` to create a MLModel object to pass-in.

        - parameters:
          - model: MLModel object
    */
    init(model: MLModel) {
        self.model = model
    }

    /**
        Construct a model with configuration

        - parameters:
           - configuration: the desired model configuration

        - throws: an NSError object that describes the problem
    */
    convenience init(configuration: MLModelConfiguration = MLModelConfiguration()) throws {
        try self.init(contentsOf: type(of:self).urlOfModelInThisBundle, configuration: configuration)
    }

    /**
        Construct ModelWithoutBias instance with explicit path to mlmodelc file
        - parameters:
           - modelURL: the file url of the model

        - throws: an NSError object that describes the problem
    */
    convenience init(contentsOf modelURL: URL) throws {
        try self.init(model: MLModel(contentsOf: modelURL))
    }

    /**
        Construct a model with URL of the .mlmodelc directory and configuration

        - parameters:
           - modelURL: the file url of the model
           - configuration: the desired model configuration

        - throws: an NSError object that describes the problem
    */
    convenience init(contentsOf modelURL: URL, configuration: MLModelConfiguration) throws {
        try self.init(model: MLModel(contentsOf: modelURL, configuration: configuration))
    }

    /**
        Construct ModelWithoutBias instance asynchronously with optional configuration.

        Model loading may take time when the model content is not immediately available (e.g. encrypted model). Use this factory method especially when the caller is on the main thread.

        - parameters:
          - configuration: the desired model configuration
          - handler: the completion handler to be called when the model loading completes successfully or unsuccessfully
    */
    class func load(configuration: MLModelConfiguration = MLModelConfiguration(), completionHandler handler: @escaping (Swift.Result<ModelWithoutBias, Error>) -> Void) {
        return self.load(contentsOf: self.urlOfModelInThisBundle, configuration: configuration, completionHandler: handler)
    }

    /**
        Construct ModelWithoutBias instance asynchronously with optional configuration.

        Model loading may take time when the model content is not immediately available (e.g. encrypted model). Use this factory method especially when the caller is on the main thread.

        - parameters:
          - configuration: the desired model configuration
    */
    class func load(configuration: MLModelConfiguration = MLModelConfiguration()) async throws -> ModelWithoutBias {
        return try await self.load(contentsOf: self.urlOfModelInThisBundle, configuration: configuration)
    }

    /**
        Construct ModelWithoutBias instance asynchronously with URL of the .mlmodelc directory with optional configuration.

        Model loading may take time when the model content is not immediately available (e.g. encrypted model). Use this factory method especially when the caller is on the main thread.

        - parameters:
          - modelURL: the URL to the model
          - configuration: the desired model configuration
          - handler: the completion handler to be called when the model loading completes successfully or unsuccessfully
    */
    class func load(contentsOf modelURL: URL, configuration: MLModelConfiguration = MLModelConfiguration(), completionHandler handler: @escaping (Swift.Result<ModelWithoutBias, Error>) -> Void) {
        MLModel.load(contentsOf: modelURL, configuration: configuration) { result in
            switch result {
            case .failure(let error):
                handler(.failure(error))
            case .success(let model):
                handler(.success(ModelWithoutBias(model: model)))
            }
        }
    }

    /**
        Construct ModelWithoutBias instance asynchronously with URL of the .mlmodelc directory with optional configuration.

        Model loading may take time when the model content is not immediately available (e.g. encrypted model). Use this factory method especially when the caller is on the main thread.

        - parameters:
          - modelURL: the URL to the model
          - configuration: the desired model configuration
    */
    class func load(contentsOf modelURL: URL, configuration: MLModelConfiguration = MLModelConfiguration()) async throws -> ModelWithoutBias {
        let model = try await MLModel.load(contentsOf: modelURL, configuration: configuration)
        return ModelWithoutBias(model: model)
    }

    /**
        Make a prediction using the structured interface

        - parameters:
           - input: the input to the prediction as ModelWithoutBiasInput

        - throws: an NSError object that describes the problem

        - returns: the result of the prediction as ModelWithoutBiasOutput
    */
    func prediction(input: ModelWithoutBiasInput) throws -> ModelWithoutBiasOutput {
        return try self.prediction(input: input, options: MLPredictionOptions())
    }

    /**
        Make a prediction using the structured interface

        - parameters:
           - input: the input to the prediction as ModelWithoutBiasInput
           - options: prediction options

        - throws: an NSError object that describes the problem

        - returns: the result of the prediction as ModelWithoutBiasOutput
    */
    func prediction(input: ModelWithoutBiasInput, options: MLPredictionOptions) throws -> ModelWithoutBiasOutput {
        let outFeatures = try model.prediction(from: input, options:options)
        return ModelWithoutBiasOutput(features: outFeatures)
    }

    /**
        Make an asynchronous prediction using the structured interface

        - parameters:
           - input: the input to the prediction as ModelWithoutBiasInput
           - options: prediction options

        - throws: an NSError object that describes the problem

        - returns: the result of the prediction as ModelWithoutBiasOutput
    */
    @available(macOS 14.0, iOS 17.0, tvOS 17.0, watchOS 10.0, *)
    func prediction(input: ModelWithoutBiasInput, options: MLPredictionOptions = MLPredictionOptions()) async throws -> ModelWithoutBiasOutput {
        let outFeatures = try await model.prediction(from: input, options:options)
        return ModelWithoutBiasOutput(features: outFeatures)
    }

    /**
        Make a prediction using the convenience interface

        - parameters:
            - image as color (kCVPixelFormatType_32BGRA) image buffer, 360 pixels wide by 360 pixels high

        - throws: an NSError object that describes the problem

        - returns: the result of the prediction as ModelWithoutBiasOutput
    */
    func prediction(image: CVPixelBuffer) throws -> ModelWithoutBiasOutput {
        let input_ = ModelWithoutBiasInput(image: image)
        return try self.prediction(input: input_)
    }

    /**
        Make a batch prediction using the structured interface

        - parameters:
           - inputs: the inputs to the prediction as [ModelWithoutBiasInput]
           - options: prediction options

        - throws: an NSError object that describes the problem

        - returns: the result of the prediction as [ModelWithoutBiasOutput]
    */
    func predictions(inputs: [ModelWithoutBiasInput], options: MLPredictionOptions = MLPredictionOptions()) throws -> [ModelWithoutBiasOutput] {
        let batchIn = MLArrayBatchProvider(array: inputs)
        let batchOut = try model.predictions(from: batchIn, options: options)
        var results : [ModelWithoutBiasOutput] = []
        results.reserveCapacity(inputs.count)
        for i in 0..<batchOut.count {
            let outProvider = batchOut.features(at: i)
            let result =  ModelWithoutBiasOutput(features: outProvider)
            results.append(result)
        }
        return results
    }
}

