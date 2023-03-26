//
//  FeedController.swift
//  TwitterClone
//
//  Created by Muhammed Şendoğdu on 26.03.2023.
//

import UIKit

class FeedController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    func configureUI() {
        let imageView = UIImageView(image: UIImage(named: "twitter_logo_blue"))
        imageView.contentMode = .scaleAspectFit
        navigationItem.titleView = imageView
    }
}

