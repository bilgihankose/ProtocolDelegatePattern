//
//  SecondVC.swift
//  ProtocolDelegatePattern
//
//  Created by Bilgihan Köse on 3.06.2020.
//  Copyright © 2020 Bilgihan Kose. All rights reserved.
//

import UIKit

protocol TestDelegate {
    
    func didClickedButton(text: String, color: UIColor) //Iki deger gondericem
}

class SecondVC: ViewController {
    
    var abracadabraDelegate: TestDelegate!
    
    override func viewDidLoad() {
        view.backgroundColor = .red
        setupView()
    }
    
    
    override func setupView(){
        let titleLabel = UILabel()
        titleLabel.text = "Second Screen"
        titleLabel.textColor = .white
        view.addSubview(titleLabel)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        titleLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        let button = UIButton()
        button.setTitle("Abracadabra", for: .normal)
        view.addSubview(button)
        button.backgroundColor = .blue
        button.widthAnchor.constraint(equalToConstant: 300).isActive = true
        button.translatesAutoresizingMaskIntoConstraints = false
        button.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 10).isActive = true
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        button.addTarget(self, action: #selector(dismissVC), for: .touchUpInside)
        
    }
    @objc func dismissVC(){
        abracadabraDelegate.didClickedButton(text: "What the HACK!", color: .black)
        dismiss(animated: true, completion: nil)
    }
}
