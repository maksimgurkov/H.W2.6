//
//  WorkViewController.swift
//  H.W2.6
//
//  Created by Максим Гурков on 16.02.2023.
//

import UIKit

class WorkViewController: UIViewController {
    
    @IBOutlet weak var companyLabel: UILabel!
    @IBOutlet weak var postLabel: UILabel!
    
    var person: Person!

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Должность и место работы"
        companyLabel.text = person.companyName
        postLabel.text = person.post
    
    }

}
