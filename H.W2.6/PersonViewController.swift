//
//  PersonViewController.swift
//  H.W2.6
//
//  Created by Максим Гурков on 13.02.2023.
//

import UIKit

class PersonViewController: UIViewController {
    
    // MARK: - IBOutlet
    @IBOutlet weak var personNameLabel: UILabel!
    
    var login = ""
    
    // MARK: - Override Function
    override func viewDidLoad() {
        super.viewDidLoad()
        personNameLabel.text = "Привет \(login)"
    }
    
    //MARK: - IBAction
    @IBAction func actionLogOutButton() {
        dismiss(animated: true)
    }
}
