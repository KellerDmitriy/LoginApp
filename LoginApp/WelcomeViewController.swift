//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Келлер Дмитрий on 31.03.2023.
//

import UIKit

final class WelcomeViewController: UIViewController {

    @IBOutlet weak var wellcomeLabel: UILabel!
    
    var wellcomeUName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        wellcomeLabel.text = wellcomeUName
    }    
}
