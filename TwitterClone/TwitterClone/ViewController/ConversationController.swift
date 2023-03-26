//
//  ConversationController.swift
//  TwitterClone
//
//  Created by Muhammed Şendoğdu on 26.03.2023.
//

import UIKit

class ConversationController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    func configureUI() {
        navigationItem.title = "Messages"
    }
}
