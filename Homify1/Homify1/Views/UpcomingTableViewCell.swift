//
//  OngoingTableViewCell.swift
//  Homify1
//
//  Created by Aindrila Ray on 06/03/23.
//

import UIKit

class UpcomingTableViewCell: UITableViewCell {
    
    static let identifier = "UpcomingTableViewCell"
    
    public let changeButton: UIButton = {
        
        let button = UIButton()
        button.setTitle("Change", for: .normal)
        button.layer.backgroundColor = UIColor.black.cgColor
        button.layer.borderColor = UIColor.systemBackground.cgColor
        button.layer.borderWidth = 2
        button.layer.cornerRadius = 7
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
        
        
    }()
    
    public let cancelButton: UIButton = {
        
        let button = UIButton()
        button.setTitle("Cancel", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.layer.backgroundColor = UIColor.systemGroupedBackground.cgColor
        button.layer.borderColor = UIColor.black.cgColor
        button.layer.borderWidth = 1
        button.layer.cornerRadius = 7
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
        
        
    }()

    public let upcomingImage: UIImageView = {
        
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.tintColor = .black
        imageView.frame = CGRect(x: 0 , y: 0, width: 0, height: 20)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.layer.cornerRadius = 30
        return imageView
        
        
        
    }()
    
    public let upcomingLabel: UILabel = {
        
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 18, weight: .semibold)
        
        label.textColor = .black
        
        
        return label
        
    }()
    
//    public let daysLeftLabel: UILabel = {
//
//        let label = UILabel()
//        label.font = UIFont.systemFont(ofSize: 25, weight: .bold)
//        label.textColor = .systemRed
//        return label
//    }()
    
    public let outOfDaysLabel:UITextView = {
        
        let label = UITextView()
        label.font = UIFont.systemFont(ofSize: 15, weight: .medium)
        label.textColor = .darkGray
        return label
        
    }()
//    public let outOfLabel:UILabel = {
//
//        let label = UILabel()
//        label.font = UIFont.systemFont(ofSize: 15, weight: .bold)
//        label.textColor = .darkGray
//        label.text = "out of"
//        return label
//
//    }()
    
     public let viewProfessional : UIButton  = {
         
         let button = UIButton()
         button.setTitle(" View Professional", for: .normal)
         button.setTitleColor(.darkGray, for: .normal)
         button.setImage(UIImage(systemName: "info.circle.fill"), for: .normal)
         button.imageView?.tintColor = .black
         button.titleLabel?.font = UIFont(name: "HelveticaNeue-Bold", size: 16)

         return button
         
        
        
        
     }()
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        
        
        // Get the data associated with the row that was tapped
        
        
        
        // Push the new view controller onto the navigation stack
        
    }
    
    
    
    public let nextServicesLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 15, weight: .bold)
        let darkRed = UIColor(red: 0.0, green: 0.0, blue: 0.502, alpha: 1.0)

        label.textColor = darkRed
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style , reuseIdentifier: reuseIdentifier)
        contentView.addSubview(upcomingImage)
        contentView.addSubview(upcomingLabel)
        contentView.addSubview(outOfDaysLabel)
        contentView.addSubview(changeButton)
        contentView.addSubview(cancelButton)
        contentView.layer.cornerRadius = 10
        contentView.layer.masksToBounds = true
//        contentView.addSubview(viewProfessional)
//        contentView.addSubview(daysLeftLabel)
        contentView.addSubview(nextServicesLabel)
        contentView.addSubview(viewProfessional)
        upcomingImage.frame = CGRect(x: 10, y: 30, width: 50, height: 75)
        upcomingLabel.frame = CGRect(x: 90, y: -14, width: UIScreen.main.bounds.width, height: 100)
//        daysLeftLabel.frame = CGRect(x: 90, y: 20, width: 30, height: 100)
//        outOfLabel.frame = CGRect(x: 130 , y: 10, width: 50, height: 100)
        outOfDaysLabel.frame = CGRect(x: 90, y: 54, width: UIScreen.main.bounds.width - 150, height: 80)
//        outOfDaysLabel.backgroundColor = .red
     nextServicesLabel.frame = CGRect(x: 95, y: 90, width: UIScreen.main.bounds.width - 100 , height: 100)
        viewProfessional.frame = CGRect(x: 76, y: 150, width: UIScreen.main.bounds.width - 200 , height: 50)
        changeButton.frame = CGRect(x: 100, y: 210, width: 125, height: 44)
        cancelButton.frame = CGRect(x: 235, y: 211, width: 121, height: 42)
//      nextServicesLabel.backgroundColor = .gray
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    
    
    
    
}

