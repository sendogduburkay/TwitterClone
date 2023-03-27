//
//  Utilities.swift
//  TwitterClone
//
//  Created by Muhammed Şendoğdu on 26.03.2023.
//

import UIKit

class Utilities {
    
    static let shared = Utilities()
    private init() {}
    
    func inputContainerView(withImage image: UIImage, textField: UITextField) -> UIView {
        let view = UIView()
        let imageView = UIImageView()
        let divider = UIView()
        
        divider.backgroundColor = .white
        
        view.heightAnchor.constraint(equalToConstant: 50).isActive = true
        imageView.image = image
        
        view.addSubview(imageView)
        view.addSubview(textField)
        view.addSubview(divider)
        
        imageView.anchor(left: view.leftAnchor, bottom: view.bottomAnchor, paddingLeft: 8, paddingBottom: 8)
        imageView.setDimensions(width: 24, height: 24)
        
        textField.anchor(left: imageView.rightAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, paddingLeft: 8,paddingBottom: 8)
        
        divider.anchor(left: imageView.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, height: 1)
        
        return view
    }
    
    func textField(withPlaceholder placeholder: String) -> UITextField {
        let tf = UITextField()
        tf.placeholder = placeholder
        tf.textColor = .white
        tf.font = UIFont.systemFont(ofSize: 16)
        tf.attributedPlaceholder = NSAttributedString(string: placeholder, attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        return tf
    }
    
    func attributedButton(_ firstPart: String, _ secondPart: String) -> UIButton {
        let button = UIButton(type: .system)
        
        let attributedTitle = NSMutableAttributedString(string: firstPart, attributes: [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 16), NSAttributedString.Key.foregroundColor: UIColor.white])
        attributedTitle.append(NSAttributedString(string: secondPart, attributes: [NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 16), NSAttributedString.Key.foregroundColor : UIColor.white]))
        
        button.setAttributedTitle(attributedTitle, for: .normal)
        return button
    }
}
