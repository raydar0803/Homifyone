//
//  searchTableViewCell.swift
//  Homify1
//
//  Created by Aindrila Ray on 27/02/23.
//

import UIKit

class searchTableViewCell: UITableViewCell {
    
    static let identifier = "searchTableViewCell"
    
    public let titleLabel: UILabel = {
        
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    public let titlesPosterUIImageView: UIImageView = {
        
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.layer.cornerRadius = 30
        return imageView
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super .init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(titlesPosterUIImageView)
        contentView.addSubview(titleLabel)
        
        applyConstraints()
        
    }
    
    private func applyConstraints() {
        let titlesPosterUIImageViewConstraints = [
            
            titlesPosterUIImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20 ),
            titlesPosterUIImageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 15),
            titlesPosterUIImageView.bottomAnchor.constraint(equalTo:contentView.bottomAnchor , constant: -15),
            titlesPosterUIImageView.widthAnchor.constraint(equalToConstant: 50),
            titlesPosterUIImageView.heightAnchor.constraint(equalToConstant: 50)
        
        ]
        
        let titleLabelConstraints = [
                    titleLabel.leadingAnchor.constraint(equalTo: titlesPosterUIImageView.trailingAnchor, constant: 20),
                    titleLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
                ]
        
        NSLayoutConstraint.activate(titlesPosterUIImageViewConstraints)
        NSLayoutConstraint.activate(titleLabelConstraints)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    
    
    


    

}
