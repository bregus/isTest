//
//  ViewController.swift
//  isTest
//
//  Created by Рома Сумороков on 02.09.2021.
//

import UIKit

class ViewController: UIViewController {

    var count: Int = 0
    
    let button: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Добавить", for: .normal)
        button.setTitleColor(.label, for: .normal)
        button.backgroundColor = .secondarySystemBackground
        button.layer.cornerRadius = 20
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let countLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 60)
        label.textColor = .label
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(countLabel)
        view.addSubview(button)
        view.backgroundColor = .systemBackground
        
        NSLayoutConstraint.activate([
            self.countLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            self.countLabel.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            
        ])
        
        NSLayoutConstraint.activate([
            self.button.topAnchor.constraint(equalTo: self.countLabel.bottomAnchor, constant: 10),
            self.button.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            self.button.heightAnchor.constraint(equalToConstant: 60),
            self.button.widthAnchor.constraint(equalToConstant: 120)
        ])
        
        self.button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        
        self.countLabel.text = String(count)
    }

    @objc func buttonTapped () {
        self.count += 1
        self.countLabel.text = String(self.count)
    }

}

