//
//  PersonsListViewController.swift
//  PersonsList
//
//  Created by Артур Сахбиев on 05.05.2022.
//

import UIKit

class PersonsListViewController: UITableViewController {
    
    var persons = Person.getPersons()


    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return persons.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personsID", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let person = persons[indexPath.row]
        
        content.text = person.fullName
        
        cell.contentConfiguration = content
        return cell
    }
    
     //MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let personInfoVC = segue.destination as? PersonInfoViewController else {return}
        guard let indexPath = tableView.indexPathForSelectedRow else {return}
        let person = persons[indexPath.row]
        personInfoVC.person = person
     
    }
    

}
