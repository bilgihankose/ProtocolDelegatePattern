//
//  SecondVC.swift
//  ProtocolDelegatePattern
//
//  Created by Bilgihan Köse on 3.06.2020.
//  Copyright © 2020 Bilgihan Kose. All rights reserved.
//

import UIKit

protocol TestDelegate {
    func didClickedButton()
}

class SecondVC: ViewController {
    
    override func viewDidLoad() {
        view.backgroundColor = .red
        setupView()
    }
    
    
    override func setupView(){
        let titleLabel = UILabel()
        titleLabel.text = "Second Screen"
        view.addSubview(titleLabel)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        titleLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
    }
    
}
