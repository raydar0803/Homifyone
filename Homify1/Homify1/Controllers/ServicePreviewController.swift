//
//  ServicePreviewController.swift
//  Homify1
//
//  Created by Aindrila Ray on 02/03/23.
//

import UIKit

class ServicePreviewController: UIViewController {
    
    static let identifier = "ServicePreviewController"
    
    
    var cellData: Service?
//    public let collectionView: UICollectionView = {
//
//
//
//
//    }()
    public let pricingButton: UIButton = {
        
        let button = UIButton()
        button.setTitle("Pricing", for: .normal)
        button.layer.backgroundColor = UIColor.gray.cgColor
//        button.layer.borderColor = UIColor.black.cgColor
//        button.layer.borderWidth = 2
        button.layer.cornerRadius = 7
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
        
        
    }()
    public let bookNowButton: UIButton = {
        
        let button = UIButton()
        button.setTitle("Book Now", for: .normal)
        button.layer.backgroundColor = UIColor.black.cgColor
//        button.layer.borderColor = UIColor.black.cgColor
//        button.layer.borderWidth = 2
        button.layer.cornerRadius = 7
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
        
        
    }()

    public let titleLabel: UILabel = {
        
        let label = UILabel()
        label.text = "About the Service"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    public let RatingsLabel: UILabel = {
        
        let label = UILabel()
        label.text = "Ratings"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    public let image: UIImageView = {
        
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.layer.cornerRadius = 30
        return imageView
        
    }()
    
    public let overview: UITextView = {
        
        let textdata = UITextView()
        textdata.translatesAutoresizingMaskIntoConstraints = false
        
        return textdata
        
        
        
    }()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        title = cellData?.service_name
//        view.backgroundColor = .systemGroupedBackground
        if let data = cellData {
                    // Do something with the data...
            print("Received data: \(data.service_name)")
                }
        view.addSubview(titleLabel)
        view.addSubview(image)
        view.addSubview(overview)
        view.addSubview(image)
//      view.addSubview(RatingsLabel)
        view.addSubview(pricingButton)
//        view.addSubview(bookNowButton)
        image.image = cellData?.coverImage
//        image.frame = CGRect(x: 100, y: 100, width: 40, height: 50)
        overview.text = cellData?.overview
        overview.textColor = .black
        overview.font = UIFont.systemFont(ofSize: 13.5)
//        titleLabel.text = cellData?.service_name
        titleLabel.font = UIFont.boldSystemFont(ofSize: 18)
        titleLabel.textColor = .black
       RatingsLabel.font = UIFont.boldSystemFont(ofSize: 18)
        RatingsLabel.textColor = .black
        RatingsLabel.translatesAutoresizingMaskIntoConstraints = false
        
        pricingButton.addTarget(self, action: #selector(showPricing), for: .touchUpInside)
       
        
//        titleLabel.frame = CGRect(x: 30, y: 100, width: UIScreen.main.bounds.width - 30 , height: 100)
        
        

        // Do any additional setup after loading the view.
    }
    
    @objc func showPricing() {
        let priceViewController = PriceViewController()
        priceViewController.cellData = cellData?.amount
        
        navigationController?.pushViewController(priceViewController, animated: true)
        }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        image.frame = CGRect(x: 100, y: 220, width: 145, height: 75)
        titleLabel.frame = CGRect(x: 35, y: 350, width: 200, height: 100)
        overview.frame = CGRect(x: 30, y: 420, width: UIScreen.main.bounds.width - 50, height: 250)
        RatingsLabel.frame = CGRect(x: 35, y: 550, width: 200, height: 100)
        pricingButton.frame = CGRect(x: 30, y: 575, width: UIScreen.main.bounds.width - 50, height: 50)
        bookNowButton.frame = CGRect(x: 30, y: 635, width: UIScreen.main.bounds.width - 50, height: 50)
    }
    
    
    

    
}
