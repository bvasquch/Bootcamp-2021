//
//  ViewController.swift
//  Bootcamp
//
//  Created by everis on 16/11/21.
//

import UIKit

class StoryboardViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
        
    @IBAction func onXIBButtonTapped(_ sender: Any) {
        let xibViewController = UIViewController(nibName: "XibView", bundle: nil)
        self.navigationController?.pushViewController(xibViewController, animated: true)
    }

    @IBAction func onCustomCodeTapped(_ sender: Any) {
        let customViewController = TestViewController()
        self.navigationController?.pushViewController(customViewController, animated: true)
    }
    
}

