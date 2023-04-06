//
//  WorkerProfileHeader.swift
//  Homify1
//
//  Created by Aindrila Ray on 31/03/23.
//

import UIKit

class WorkerProfileHeader: UIView {
    
    
    
    private let profileImage: UIImageView = {
        
        let image = UIImageView()
        image.contentMode = .scaleAspectFill
        image.layer.cornerRadius = 70
        
        image.clipsToBounds = true
        image.image = UIImage(named: "brad_pitt")
        
        return image
        
    }()
    
    private let name: UILabel = {
        
        let name = UILabel()
        name.textAlignment = .left
        name.font = .systemFont(ofSize: 25, weight: .semibold)
        return name
        
    }()
    
    private let ratingButton: UIButton = {
        
        let button = UIButton()
        button.setTitleColor(.darkGray, for: .normal)
        button.setImage(UIImage(systemName: "info.circle.fill"), for: .normal)
        button.imageView?.tintColor = .black
        button.titleLabel?.font = UIFont(name: "HelveticaNeue-Bold", size: 16)
        return button

        
        
    }()
    
    private var callButton: UIButton = {
        
        let button = UIButton()
        button.setImage(UIImage(systemName: "phone.circle.fill"), for: .normal)
        button.imageView?.tintColor = .black
        button.titleLabel?.font = UIFont(name: "HelveticaNeue-Bold", size: 34)
        return button
        
        
    }()
    
    private let textButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(systemName: "message.fill"), for: .normal)
        button.imageView?.tintColor = .black
//        button.titleLabel?.font = UIFont(name: "HelveticaNeue-Bold", size: 16)
        return button
        
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(profileImage)
        addSubview(name)
        addSubview(ratingButton)
        addSubview(callButton)
        addSubview(textButton)
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        profileImage.frame = CGRect(x: 125, y: 50, width: 140, height: 140)
        name.frame = CGRect(x: 149, y: 150, width: 200, height: 150)
        ratingButton.frame = CGRect(x: 125, y: 190, width: 200, height: 135)
        callButton.frame = CGRect(x: 150, y: 225, width: 100, height: 100)
       textButton.frame = CGRect(x:  260, y: 225, width: 100, height: 100)
        
        
        
        
        
    }
    
    
    

    
}
