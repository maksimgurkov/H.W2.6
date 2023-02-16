//
//  WorkViewController.swift
//  H.W2.6
//
//  Created by Максим Гурков on 16.02.2023.
//

import UIKit

class WorkViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet weak var companyLabel: UILabel!
    @IBOutlet weak var postLabel: UILabel!
    
    //MARK: - Public Properties
    var person: Person!
    
    // MARK: - Override Functions
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Должность и место работы"
        companyLabel.text = person.companyName
        postLabel.text = person.post
        
    }
    
}
