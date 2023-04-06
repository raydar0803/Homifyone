//
//  User details.swift
//  Homify1
//
//  Created by Aindrila Ray on 28/02/23.
//

import Foundation
import UIKit

struct User{
    
    let user_name: String?
    let password: String?
    let FirstName: String?
    let LastName: String?
    let profile_image: UIImage?
    let address: String?
    let mobileNumber: String?
    
}

struct UserLabels{
    let labels: String?
    let info: Any?
    let icon: UIImage?
    
}

struct UserOngoingServices{
    
    let id: Int
    let service_type: String?
    let service_name: String?
    let service_title: String?
    let amount: String?
    let coverImage: UIImage?
    let overview: String?
    let rating: String?
    let valid: String
    
    
    
}

struct Address{
    let type: String?
    let value: String?
}
