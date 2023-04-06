//
//  PriceTableViewCell.swift
//  Homify1
//
//  Created by Aindrila Ray on 29/03/23.
//

import UIKit

class PriceTableViewCell: UITableViewCell {

    static let identifier = "PriceTableViewCell"
    
    
    let checkmarkConfiguration = UIImage.SymbolConfiguration(pointSize: 20)
    
    public let bookButton: UIButton = {
        
        let button = UIButton()
        button.setTitle("Book Now", for: .normal)
        button.layer.backgroundColor = UIColor.black.cgColor
        button.layer.borderColor = UIColor.systemBackground.cgColor
        button.layer.borderWidth = 2
        button.layer.cornerRadius = 7
//        button.translatesAutoresizingMaskIntoConstraints = false
        return button
        
        
    }()
    
    
    public let view: UIView = {
        
        let view = UIView()
        view.layer.cornerRadius = 10
        return view
        
    }()
    
    public let titleLabel: UILabel = {
        
        let label = UILabel()
//        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.font = UIFont(name: "HelveticaNeue-Bold", size: 25)
        return label
    }()
    
    public let subscriptionLabel: UILabel = {
        
        let label = UILabel()
//        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.font = UIFont(name: "HelveticaNeue", size: 15)
        return label
    }()
    
    public let monthlyLabel: UILabel = {
        
        let label = UILabel()
//        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.font = UIFont(name: "HelveticaNeue", size: 15)
        return label
    }()
    
        
        
    
    
    public let textView: UILabel = {
        
        let textdata = UILabel()
//        textdata.translatesAutoresizingMaskIntoConstraints = false
        textdata.font = UIFont(name: "HelveticaNeue", size: 15)
    
        
        return textdata
                
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style , reuseIdentifier: reuseIdentifier)
//        contentView.addSubview(titleLabel)
        contentView.addSubview(textView)
        contentView.addSubview(subscriptionLabel)
        contentView.addSubview(monthlyLabel)
        contentView.addSubview(view)
        contentView.addSubview(titleLabel)
//        view.addSubview(<#T##view: UIView##UIView#>)
        contentView.addSubview(bookButton)
        let image = UIImageView(image: UIImage(systemName: "checkmark.fill", withConfiguration: checkmarkConfiguration ))
        let image1 = UIImageView(image: UIImage(systemName: "checkmark.fill", withConfiguration: checkmarkConfiguration))
        let image2 = UIImageView(image: UIImage(systemName: "checkmark.fill", withConfiguration: checkmarkConfiguration))
        contentView.backgroundColor = .systemGroupedBackground
        image.frame = CGRect(x: 5, y: 140, width: 30, height: 30)
        image1.frame = CGRect(x: 5, y: 90, width: 30, height: 30)
        image2.frame = CGRect(x: 5, y: 190, width: 30, height: 30)
        titleLabel.textColor = .black
        view.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width - 21, height: 45)
        titleLabel.frame = CGRect(x: 10, y: 30, width: UIScreen.main.bounds.width, height: 100)
        monthlyLabel.frame = CGRect(x: 25, y: 140, width: UIScreen.main.bounds.width , height: 100)
        subscriptionLabel.frame = CGRect(x: 25, y: 90  , width: UIScreen.main.bounds.width, height: 100)
        textView.frame = CGRect(x: 25, y: 180 , width: UIScreen.main.bounds.width, height: 120)
        bookButton.frame = CGRect(x: UIScreen.main.bounds.width/2 - 95, y: 300, width: 150, height: 50)
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }

    
   
    
   
    
    
    
    
    
    
    
    
    
}
