//
//  PersonInfoViewController.swift
//  PersonsList
//
//  Created by Артур Сахбиев on 08.05.2022.
//

import UIKit

class PersonInfoViewController: UIViewController {

    @IBOutlet var phoneNuberLable: UILabel!
    @IBOutlet var emailLable: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        phoneNuberLable.text = "Phone: \(person.phoneNumber)"
        emailLable.text = "Email: \(person.email)"

    }
}
