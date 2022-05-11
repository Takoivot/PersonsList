//
//  SectionsPersonsListViewController.swift
//  PersonsList
//
//  Created by Артур Сахбиев on 11.05.2022.
//

import UIKit

class SectionsPersonsListViewController: UITableViewController {
    
    var persons = Person.getPersons()

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        persons[section].fullName
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "sectionsID", for: indexPath)
        
        let person = persons[indexPath.section]
        var content = cell.defaultContentConfiguration()
        
        switch indexPath.row {
        case 0:
        content.text = person.phoneNumber
        content.image = UIImage(systemName: Contacts.phone.rawValue)
        default:
        content.text = person.email
        content.image = UIImage(systemName: Contacts.email.rawValue)
            
        }
        
        cell.contentConfiguration = content
       
                
        return cell
    }
    
    
}