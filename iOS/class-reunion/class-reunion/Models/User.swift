//
//  User.swift
//  class-reunion
//
//  Created by Prakash Sundesha on 08/10/20.
//  Copyright © 2020 Prakash Sundesha. All rights reserved.
//

import Foundation

class User {
    var profileImage: String?
    var name: String
    var phone: String?
    init(image: String?, name: String, phone: String? ) {
        self.profileImage = image
        self.name = name
        self.phone = phone
    }
}

