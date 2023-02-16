//
//  PersonInfoViewController.swift
//  H.W2.6
//
//  Created by Максим Гурков on 16.02.2023.
//

import UIKit

final class PersonInfoViewController: UIViewController {
    
    //MARK: - IBOutlet
    @IBOutlet weak var personPhotoImage: UIImageView!
    
    @IBOutlet weak var namePersonLabel: UILabel!
    @IBOutlet weak var sureNameLabel: UILabel!
    @IBOutlet weak var phonePersonLabel: UILabel!
    @IBOutlet weak var telegramPersonLabel: UILabel!
    @IBOutlet weak var emailPersonLabel: UILabel!
    
    //MARK: - Public Properties
    var person: Person!
    
    //MARK: - Override Functions
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Личные данные"
        setupImageView()
        setupLabel()
    }
    
    //MARK: - Private Functions
    private func setupImageView() {
        personPhotoImage.image = UIImage(named: person.personName)
        personPhotoImage.layer.cornerRadius = personPhotoImage.frame.height / 2
    }
    
    private func setupLabel() {
        namePersonLabel.text = person.personName
        sureNameLabel.text = person.personSurname
        phonePersonLabel.text = person.phone
        telegramPersonLabel.text = person.telegram
        emailPersonLabel.text = person.email
    }
    

    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let workVC = segue.destination as? WorkViewController else { return }
        workVC.person = person
    }
    

}
