//
//  WorkerTableViewCell.swift
//  Homify1
//
//  Created by Aindrila Ray on 29/03/23.
//

import UIKit

class WorkerTableViewCell: UITableViewCell {

    static let identifier = "WorkerTableViewCell"
    
    private let profileImage: UIImageView = {
        
        let image = UIImageView()
        image.contentMode = .scaleAspectFill
        image.layer.cornerRadius = 70
        
        image.clipsToBounds = true
        image.image = UIImage(named: "brad_pitt")
        
        return image
        
    }()
    
    
    
    
}
