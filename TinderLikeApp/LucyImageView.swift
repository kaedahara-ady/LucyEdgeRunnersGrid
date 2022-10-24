//
//  LucyImageView.swift
//  TinderLikeApp
//
//  Created by OverPowerPWND Keeper83 on 24/10/22.
//

import UIKit

class LucyImageView: UIImageView {
    
    let imageIndexLabel: UILabel = {
        let label = UILabel()
        label.textColor = .yellow
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.layer.shadowOpacity = 0.7
        label.layer.shadowOffset = .zero
        
        return label
    }()
    
    
    @IBInspectable
    var imageIndex: NSNumber! {
        didSet {
//            print(imageIndex)
            
            let imageName = "Lucy\(imageIndex.stringValue)"
            self.image = UIImage(named: imageName)
            
            layer.cornerRadius = 15
            imageIndexLabel.text = imageIndex.stringValue
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        addSubview(imageIndexLabel)
        imageIndexLabel.translatesAutoresizingMaskIntoConstraints = false
        imageIndexLabel.topAnchor.constraint(equalTo: topAnchor, constant: 8).isActive = true
        imageIndexLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8).isActive = true
    }
    
}
