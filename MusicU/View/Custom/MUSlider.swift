//
//  MUSlider.swift
//  MusicU
//
//  Created by mai ng on 6/9/21.
//

import UIKit

class MUSlider: UISlider {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func trackRect(forBounds bounds: CGRect) -> CGRect {
        let customBounds  = CGRect(origin: bounds.origin, size: CGSize(width: bounds.size.width, height: 5.0))
        super.trackRect(forBounds: customBounds)
        
        return customBounds
        
    }
}

