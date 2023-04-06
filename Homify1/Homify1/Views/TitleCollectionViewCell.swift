//
//  TitleCollectionViewCell.swift
//  Homify1
//
//  Created by Aindrila Ray on 26/02/23.
//

import UIKit
import SDWebImage

class TitleCollectionViewCell: UICollectionViewCell {
    
//    private var titles : [Service] = [
//
//         Service(id: 001, service_type: "Cleaning", service_name: "Full-house Cleaning", service_title: "Full-house Cleaning" , coverImage: UIImage(named: "cleaning lady"), overview: "Full house cleaning is a thorough cleaning process that involves deep cleaning every area of your home. This type of cleaning is typically done when you are moving into a new home, preparing your home for a special occasion or event, or just wanting to refresh and revitalize your living space." , rating: "3.5/5"),
//
//         Service(id: 001, service_type: "Cleaning", service_name: "Full-house Cleaning", service_title: "Full-house Cleaning" , coverImage: UIImage(named: "cleaning lady"), overview: "Full house cleaning is a thorough cleaning process that involves deep cleaning every area of your home. This type of cleaning is typically done when you are moving into a new home, preparing your home for a special occasion or event, or just wanting to refresh and revitalize your living space." , rating: "3.5/5"),
//
//         Service(id: 001, service_type: "Cleaning", service_name: "Full-house Cleaning", service_title: "Full-house Cleaning" , coverImage: UIImage(named: "cleaning lady"), overview: "Full house cleaning is a thorough cleaning process that involves deep cleaning every area of your home. This type of cleaning is typically done when you are moving into a new home, preparing your home for a special occasion or event, or just wanting to refresh and revitalize your living space." , rating: "3.5/5"),
//         Service(id: 001, service_type: "Cleaning", service_name: "Full-house Cleaning", service_title: "Full-house Cleaning" , coverImage: UIImage(named: "cleaning lady"), overview: "Full house cleaning is a thorough cleaning process that involves deep cleaning every area of your home. This type of cleaning is typically done when you are moving into a new home, preparing your home for a special occasion or event, or just wanting to refresh and revitalize your living space." , rating: "3.5/5")
//
//
//
//    ]
    
    static let identifier = "TitleCollectionViewCell"
    
    private let moreButton: UIButton = {
        
        let button = UIButton()
        let image = UIImage(systemName: "ellipsis.circle.fill", withConfiguration: UIImage.SymbolConfiguration(pointSize: 20))
        button.setImage(image, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.tintColor = .black
      button.layer.cornerRadius = 5
        return button
        
        
        
    }()
    
    private let renewButton: UIButton = {
        
        let button = UIButton()
        button.setTitle("Renew", for: .normal)
        button.backgroundColor = .black
        button.translatesAutoresizingMaskIntoConstraints = false
        button.tintColor = .black
      button.layer.cornerRadius = 14
        return button
        
        
        
    }()
       public let posterImageView: UIImageView = {
        let imageView  = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.backgroundColor = .white
           imageView.layer.cornerRadius = 50
           

        return imageView
    }()
    
    public let Titlelabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 12)
//        label.layer.backgroundColor = UIColor.systemGroupedBackground.cgColor
        label.textColor = .black
        
        label.textAlignment = .left
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
        
    }()
    
    public let OverviewLabel: UITextView = {
        
        let label = UITextView()
        label.textAlignment = .left
        label.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
        label.backgroundColor = .systemGroupedBackground
        label.textColor = .systemGray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
        
    }()
    
    public let ValidityLabel: UITextView = {
        
        let label = UITextView()
        label.textAlignment = .left
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 30, weight: .semibold)
        let darkRedColor = UIColor(red: 139/255, green: 0/255, blue: 0/255, alpha: 1)
        label.backgroundColor = .systemGroupedBackground
        label.textColor =  darkRedColor
        return label
        
        
    }()
    
    public let FrequencyLabel: UITextView = {
        let label = UITextView()
        label.textAlignment = .left
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 14)
        let darkRedColor = UIColor(red: 139/255, green: 0/255, blue: 0/255, alpha: 1)
        label.backgroundColor = .systemGroupedBackground
        label.textColor = .black
        
        return label
        
        
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(posterImageView)
//       contentView.addSubview(Titlelabel)
//        contentView.addSubview(ValidityLabel)
//        contentView.addSubview(FrequencyLabel)
//        contentView.addSubview(OverviewLabel)
//        contentView.addSubview(moreButton)
//      contentView.addSubview(renewButton)
        applyConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    private func applyConstraints() {
//        let posterImageViewConstraints = [
//
//            posterImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20 ),
//            posterImageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 15),
//            posterImageView.bottomAnchor.constraint(equalTo:contentView.bottomAnchor , constant: 15),
//            posterImageView.heightAnchor.constraint(equalToConstant: 20)
//
//
//        ]
//
//        let titleLabelConstraints = [
//            label.leadingAnchor.constraint(equalTo: posterImageView.leadingAnchor, constant: 20),
//
//            label.topAnchor.constraint(equalTo: posterImageView.bottomAnchor, constant: 20),
//
//            label.bottomAnchor.constraint(equalTo: posterImageView.bottomAnchor)
//        ]
//
//        NSLayoutConstraint.activate(posterImageViewConstraints)
//        NSLayoutConstraint.activate(titleLabelConstraints)
        
    }
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
     posterImageView.frame = contentView.bounds
//        posterImageView.frame = CGRect(x: 5, y: 20, width: contentView.bounds.width - 10, height: contentView.bounds.height - 60)
        moreButton.frame = CGRect(x:289 , y: 5, width: 50, height: 50)
     Titlelabel.frame = CGRect(x: 8, y: 300 , width: contentView.bounds.width - 50, height: 30)
     OverviewLabel.frame = CGRect(x: 50, y: 135, width: 300, height: 75)
        ValidityLabel.frame = CGRect(x: 8, y: 128, width: contentView.bounds.width - 50, height: 70)
        FrequencyLabel.frame = CGRect(x: 8, y: 200, width: contentView.bounds.width - 50, height: 70)
     renewButton.frame = CGRect(x: 25, y: 350, width: contentView.bounds.width - 60 , height: 45)
//                label.frame = CGRect(x: 10, y: contentView.frame.size.height + 140, width: contentView.frame.size.width - 10, height: 50)
    }

        
}
    
    


