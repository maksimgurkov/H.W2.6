//
//  WelcomeViewController.swift
//  H.W2.6
//
//  Created by Максим Гурков on 13.02.2023.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    // MARK: - IBOutlet
    @IBOutlet weak var personNameLabel: UILabel!
    
    // MARK: Public Propertis
    var person: Person!
    
    // MARK: - Override Function
    override func viewDidLoad() {
        super.viewDidLoad()
        personNameLabel.text = "Привет \(person.personName)"
    }
    
}
