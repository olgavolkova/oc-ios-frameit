//
//  Creation.swift
//  FrameIT
//
//  Created by Olga Volkova on 2018-01-09.
//  Copyright © 2018 Olga Volkova OC. All rights reserved.
//

import Foundation
import UIKit

class Creation {
    var image: UIImage
    var colorSwatch: ColorSwatch
    
    static var defaultImage: UIImage {
        return UIImage.init(named: "FrameIT-placeholder")!
    }
    
    static var defaultColorSwatch: ColorSwatch {
        return ColorSwatch.init(caption: "Simply Yellow", color: .yellow)
    }
    
    init() {
        // stored property initialization
        image = Creation.defaultImage
        colorSwatch = Creation.defaultColorSwatch
    }
    
    convenience init(colorSwatch: ColorSwatch?) {
        self.init()
        // stored property initialization
        if let userColorSwatch = colorSwatch {
            self.colorSwatch = userColorSwatch
        }
    }
    
    func reset(colorSwatch: ColorSwatch?) {
        image = Creation.defaultImage
        if let userColorSwatch = colorSwatch {
            self.colorSwatch = userColorSwatch
        }
        else {
            self.colorSwatch = Creation.defaultColorSwatch
        }
    }
}
