//
//  ViewController.swift
//  ProtocolDelegatePattern
//
//  Created by Bilgihan Köse on 3.06.2020.
//  Copyright © 2020 Bilgihan Kose. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .cyan
        setupView()
    }
    
    func setupView(){
        let titleLabel = UILabel()
        titleLabel.text = "First Screen"
        view.addSubview(titleLabel)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        titleLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        
        let button = UIButton()
        button.setTitle("SecondVC", for: .normal)
        view.addSubview(button)
        button.backgroundColor = .blue
        button.widthAnchor.constraint(equalToConstant: 300).isActive = true
        button.translatesAutoresizingMaskIntoConstraints = false
        button.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 10).isActive = true
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        button.addTarget(self, action: #selector(openSecondVC), for: .touchUpInside)
    }
    
    @objc func openSecondVC(){
        let vc = SecondVC()
        present(vc, animated: true, completion: nil)
    }
    
}





