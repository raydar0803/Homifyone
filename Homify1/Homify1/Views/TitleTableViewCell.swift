//
//  TitleTableViewCell.swift
//  Homify1
//
//  Created by Aindrila Ray on 26/02/23.
//

import UIKit

class TitleTableViewCell: UITableViewCell {
    
    static let identifier = "TitleTableViewCell"
    
    public let arrowButton: UIButton = {
        
        let button = UIButton()
        let image = UIImage(systemName: "plus", withConfiguration: UIImage.SymbolConfiguration(pointSize: 20))
        button.setImage(image, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.tintColor = .black
      button.layer.cornerRadius = 5
   
        return button
        
        
    }()
    
    
    public let titleLabelsec: UILabel = {
        
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
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
        contentView.addSubview(titleLabelsec)
        contentView.addSubview(arrowButton)
        
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
                    titleLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
                ]
        let titleLabel1Constraints = [
            titleLabelsec.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 39),
            titleLabelsec.bottomAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: -100),
                    
            titleLabelsec.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
                ]
                
                
                let playTitleButtonConstraints = [
                    arrowButton.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
                    arrowButton.centerYAnchor.constraint(equalTo: contentView.centerYAnchor)
                ]
                
                NSLayoutConstraint.activate(titlesPosterUIImageViewConstraints)
                NSLayoutConstraint.activate(titleLabelConstraints)
                NSLayoutConstraint.activate(playTitleButtonConstraints)
                NSLayoutConstraint.activate(titleLabel1Constraints)
            }
        
    
    
    
    
    required init?(coder: NSCoder) {
        fatalError()
    }

}
