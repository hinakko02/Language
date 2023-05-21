//
//  ResultViewController.swift
//  HacasonUIKit
//
//  Created by Hina on 2023/05/20.
//

import UIKit

class YesResultViewController: UIViewController {
    var advice: String?
    @IBOutlet weak var adviceLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        adviceLabel.text = advice
    }
}
