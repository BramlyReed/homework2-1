//
//  contact.swift
//  PhoneBook
//
//  Created by Stanislav on 12.11.2019.
//  Copyright © 2019 Stanislav. All rights reserved.
//

import UIKit
class Contact {
    
    static var shared = [Contact]()
    init() {}
    init(name: String?, surname: String?, number: String?) {
        self.name = name
        self.surname = surname
        self.number = number
    }
    var name: String?
    var surname: String?
    var number: String?

}
