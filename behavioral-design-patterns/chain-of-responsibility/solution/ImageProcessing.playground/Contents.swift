//: Playground - noun: a place where people can play

import UIKit

struct Image {
    let data: Data
}

/// Protocol to be implemented by a handler or image processing unit.
protocol ImageHandler {
    func handle(image: Image)
}

/// Image handler that creates a gray scale image from the input image
class GrayscaleCreator: ImageHandler {
    func handle(image: Image) {
        // create grayscale image
    }
}

/// Image handler that creates a thumbnail image from the input image
class ThumbnailCreator: ImageHandler {
    func handle(image: Image) {
        // create thumbnail image
    }
}

class ImagePersister: ImageHandler {
    func handle(image: Image) {
        
    }
}

/// A class that processes an image
class ImageProcessor {
    private var handlers: [ImageHandler] = []
    
    init() {
        handlers = [
            GrayscaleCreator(),
            ThumbnailCreator(),
            ImagePersister()
        ]
    }
    
    func process(image: Image) {
        for handler in handlers {
            handler.handle(image: image)
        }
    }
}

