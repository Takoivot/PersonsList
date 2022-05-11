//
//  TabBarViewController.swift
//  PersonsList
//
//  Created by Артур Сахбиев on 11.05.2022.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sharedPersonContacts()
    }

    private func sharedPersonContacts() {
        let persons = Person.getPersons()
        let personsList = viewControllers?.first as! PersonsListViewController
        let sectionsPersonsVC = viewControllers?.last as! SectionsPersonsListViewController
        
        personsList.persons = persons
        sectionsPersonsVC.persons = persons
    }
}
