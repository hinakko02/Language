//
//  FirstViewController.swift
//  HacasonUIKit
//
//  Created by Hina on 2023/05/20.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func startButton(_ sender: UIButton) {
        
        self.performSegue(withIdentifier: "toSecond", sender: nil)
    }
}
