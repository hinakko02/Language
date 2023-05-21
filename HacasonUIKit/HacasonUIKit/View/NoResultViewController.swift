//
//  NoResultViewController.swift
//  HacasonUIKit
//
//  Created by Hina on 2023/05/21.
//

import UIKit
class NoResultViewController: UIViewController {
    var lang: String?

    @IBOutlet weak var langLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        langLabel.text = lang
    }
}
