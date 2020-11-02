//
//  DependCheck.swift
//  DependencyTest
//
//  Created by Dean Wagstaff on 10/23/20.
//

import Foundation
//import Firebase

public class DependCheck {
    var pointlessProperty: Any
//    var textDetector: Vision!
//    var ocrData:[VisionTextBlock]?
    
    public init(pointlessParam: Any) {
        self.pointlessProperty = pointlessParam
    }
    
    public func temp() {
        print("t his prints to the console so we can see if this is working!")
    }
    
    public func crashIt() {
        
    }
}

