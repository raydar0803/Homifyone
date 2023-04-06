//
//  Daily Services.swift
//  Homify1
//
//  Created by Aindrila Ray on 26/02/23.
//

import Foundation
import UIKit

struct DailyServicesResponse {
    let service : [Service]
    let ongoing : [Ongoing]
}

struct Service {
    
    let id: Int
    let service_type: String?
    let service_name: String?
    let service_title: String?
    let amount: [Pricing]?
    let coverImage: UIImage?
    let overview: String?
    let rating: String?
    let valid: String
    
}

struct Worker {
    
    let ID: String?
    let name: String
    let gender: String?
    let profileimage: UIImage?
    let rating: String?
    let domain: String?
    let languages: [String]?
    
    
    
}

struct Pricing {
    
    let type: String
    let cellColor: UIColor
    let amount: String
    let replacement: String
    let monthly: String
    let subscription: String
}

struct Ongoing {
    
    let id: Int
    let service_type: String?
    let service_name: String?
    let service_title: String?
    let coverImage: UIImage?
    let overview: String?
    let rating: String?
    let valid: String
    let daysLeft: String?
    let outofDays: String?
    let worker: Worker?
    let nextVisit: String
    
    
    
    
}

struct Upcoming {
    
    let id: Int
    let service_type: String?
    let service_name: String?
    let service_title: String?
    let coverImage: UIImage?
    let overview: String?
    let rating: String?
    let valid: String
    let daysLeft: String?
    let outofDays: String?
    let worker: Worker?
    let nextVisit: String
    
    
    
    
}

