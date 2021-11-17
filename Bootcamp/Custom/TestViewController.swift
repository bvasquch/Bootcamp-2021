//
//  TestViewController.swift
//  Bootcamp
//
//  Created by everis on 16/11/21.
//

import UIKit

class TestViewController: UIViewController {
    
    var customLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Custom code view"
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(customLabel)
        customLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        customLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }

}
