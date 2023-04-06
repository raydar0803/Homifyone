//
//  UserProfileHeader.swift
//  Homify1
//
//  Created by Aindrila Ray on 01/03/23.
//

import UIKit

class UserProfileHeader: UIView {
    
    
    private let editButton: UIButton = {
        
        let button = UIButton()
        button.setTitle("Edit details", for: .normal)
        button.layer.backgroundColor = UIColor.black.cgColor
        button.layer.borderColor = UIColor.systemBackground.cgColor
        button.layer.borderWidth = 2
        button.layer.cornerRadius = 7
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
        
        
    }()
    
    private let profileImage: UIImageView = {
        
        let image = UIImageView()
        image.contentMode = .scaleAspectFill
        image.layer.cornerRadius = 70
        
        image.clipsToBounds = true
        image.image = UIImage(named: "brad_pitt")
        
        return image
        
    }()
    
    private let nameTitle: UILabel = {
        
        let name = UILabel()
        name.text = "Brad Pitt"
        name.textAlignment = .left
        name.font = .systemFont(ofSize: 25, weight: .semibold)
        return name
    }()
    
    private let contactTitle: UILabel = {
        
        let contact = UILabel()
        contact.text = "911-003-2002"
        contact.font = .systemFont(ofSize: 22, weight: .semibold)
        contact.textAlignment = .left
        contact.textColor = .darkGray
        return contact
        
        
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(profileImage)
        addSubview(nameTitle)
        addSubview(contactTitle)
        addSubview(editButton)
        applyConstraints()
        
        
    }
     
    private func applyConstraints() {
        
        
        let profileImageconstraints = [
            profileImage.leadingAnchor.constraint(equalTo: leadingAnchor),
            profileImage.bottomAnchor.constraint(equalTo: bottomAnchor),
            profileImage.heightAnchor.constraint(equalToConstant: 45)
        ]
        
        let nameLabelConstraints = [
            
            nameTitle.leadingAnchor.constraint(equalTo: profileImage.leadingAnchor, constant: -45),
            nameTitle.bottomAnchor.constraint(equalTo: profileImage.bottomAnchor, constant: 50),
            nameTitle.widthAnchor.constraint(equalToConstant: 150),
            nameTitle.heightAnchor.constraint(equalToConstant: 45)
        ]
        
        NSLayoutConstraint.activate(profileImageconstraints)
        NSLayoutConstraint.activate(nameLabelConstraints)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        profileImage.frame = CGRect(x: 125, y: 50, width: 140, height: 140)
        nameTitle.frame = CGRect(x: 149, y: 150, width: 200, height: 150)
        contactTitle.frame = CGRect(x: 125, y: 190, width: 200, height: 135)
        editButton.frame = CGRect(x: 125, y: 300, width: 150, height: 50)
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    

}
