//
//  ViewController.swift
//  PhoneBook
//
//  Created by Stanislav on 11.11.2019.
//  Copyright © 2019 Stanislav. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tablelist: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        Contact.shared.append(Contact(name: "Stas", surname: "Andreev", number: "12345678901"))
        Contact.shared.append(Contact(name: "Stas", surname: "Andreev", number: "12345678901"))
        Contact.shared.append(Contact(name: "Stas", surname: "Andreev", number: "12345678901"))
    }

    override func viewWillAppear(_ animated: Bool) {
        tablelist.reloadData()
        
    }
}
extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Contact.shared.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableCell") as! TableCellTableViewCell
        let contact = Contact.shared[indexPath.row]
        cell.set(name: contact.name, surname: contact.surname, number: contact.number)
        return cell
    }
}
