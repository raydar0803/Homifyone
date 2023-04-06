//
//  CollectionViewTableViewCell.swift
//  Homify1
//
//  Created by Aindrila Ray on 26/02/23.
//

import UIKit

class CollectionViewTableViewCell: UITableViewCell {

     static let identifier = "CollectionViewTableViewCell"
    
    
    
    private lazy var navigationController: UINavigationController = {
           let viewController = ServicePreviewController()
           let navigationController = UINavigationController(rootViewController: viewController)
           return navigationController
       }()
    
    private var titles : [Service] = [
        
        
        Service(id: 002, service_type: "maid", service_name: "Housekeeper", service_title: "broom", amount: [Pricing(type: "Trial", cellColor: .orange, amount: "Rs. 2749", replacement: "1", monthly: "2749", subscription: "1 month"), Pricing(type: "Bestseller", cellColor: .yellow, amount: "Rs. 4496", replacement: "3", monthly: "749", subscription: "6 months"), Pricing(type: "Super-saver", cellColor: .green, amount: "Rs.5920", replacement: "5", monthly: "493", subscription: "12 months")] , coverImage: UIImage(named: "broom"), overview: "Maid services, also known as house cleaning services or residential cleaning services, are professional cleaning services that offer a range of cleaning solutions for homes and apartments." , rating: "3.5/5", valid: "28th December, 2022 to 28th February, 2023"),
        
        Service(id: 003, service_type: "Cooking/Catering/Chef", service_name: "Cook", service_title: "Chef", amount: [Pricing(type: "Trial", cellColor: .orange, amount: "Rs. 2749", replacement: "1", monthly: "2749", subscription: "1 month"), Pricing(type: "Bestseller", cellColor: .yellow, amount: "Rs. 4496", replacement: "3", monthly: "749", subscription: "6 months"), Pricing(type: "Super-saver", cellColor: .green, amount: "Rs.5920", replacement: "5", monthly: "493", subscription: "12 months")] , coverImage: UIImage(named: "chef"), overview: "Good cooking at your space, with specially trained cooks and service." , rating: "3.5/5", valid: "28th December, 2022 to 28th February, 2023"),
        
        Service(id: 004, service_type: "babysitting", service_name: "Laundry", service_title: "Babysitting", amount: [Pricing(type: "Trial", cellColor: .orange, amount: "Rs. 2749", replacement: "1", monthly: "2749", subscription: "1 month"), Pricing(type: "Bestseller", cellColor: .yellow, amount: "Rs. 4496", replacement: "3", monthly: "749", subscription: "6 months"), Pricing(type: "Super-saver", cellColor: .green, amount: "Rs.5920", replacement: "5", monthly: "493", subscription: "12 months")] , coverImage: UIImage(named: "laundry"), overview: "" , rating: "3.5/5", valid: "28th December, 2022 to 28th February, 2023"),
        
        Service(id: 005, service_type: "Driving", service_name: "Driver", service_title: "Driving", amount: [Pricing(type: "Trial", cellColor: .orange, amount: "Rs. 2749", replacement: "1", monthly: "2749", subscription: "1 month"), Pricing(type: "Bestseller", cellColor: .yellow, amount: "Rs. 4496", replacement: "3", monthly: "749", subscription: "6 months"), Pricing(type: "Super-saver", cellColor: .green, amount: "Rs.5920", replacement: "5", monthly: "493", subscription: "12 months")] , coverImage: UIImage(named: "driver"), overview: "Driver services refer to a variety of services related to driving and transportation. These services are typically provided by government agencies or private companies and are designed to help drivers obtain licenses, comply with regulations, and maintain safe driving practices." , rating: "3.5/5", valid: "28th December, 2022 to 28th February, 2023")
        
        
    ]
     
//    private var ongoing: [Ongoing] = [
//
//        Ongoing(id: 001, service_type: "Cleaning", service_name: "Housekeeper", service_title: "Full-house Cleaning", amount: "" , coverImage: UIImage(named: "broom"), overview: "Full house cleaning is a thorough cleaning process that involves deep cleaning every area of your home." , rating: "3.5/5", valid: "28th December, 2022 to 28th February, 2023" ),
//
//        Ongoing(id: 001, service_type: "Driving", service_name: "Driver", service_title: "Driving", amount: "" , coverImage: UIImage(named: "driver"), overview: "Driver services refer to a variety of services related to driving and transportation." , rating: "3.5/5", valid: "28th December, 2022 to 28th February, 2023")
//
//
//    ]
    
    private let collectionView: UICollectionView = {
        
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: UIScreen.main.bounds.width/2 - 25 , height: 50)
        layout.scrollDirection = .horizontal
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.register(TitleCollectionViewCell.self, forCellWithReuseIdentifier: TitleCollectionViewCell.identifier)
        return collectionView
    }()

    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
//        contentView.backgroundColor = .systemPink
        contentView.addSubview(collectionView)
        
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    required init?(coder: NSCoder)
    {
        fatalError()
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        collectionView.frame = bounds
       

    }
    
    public func configure(with titles: [Service]) {
        
        self.titles = titles
        DispatchQueue.main.async {
            [weak self] in self?.collectionView.reloadData()
        }
    }
}


extension CollectionViewTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: TitleCollectionViewCell.identifier, for: indexPath) as? TitleCollectionViewCell else {
            return UICollectionViewCell()
        }
//        cell.imageView?.image = titles[indexPath.row].coverImage
//        cell.textLabel?.text = titles[indexPath.row].service_title
        

        cell.layer.backgroundColor = UIColor.systemGroupedBackground.cgColor
        cell.layer.cornerRadius =  14
        cell.layer.borderColor = UIColor.darkGray.cgColor
        cell.layer.borderWidth = 1
        
        cell.clipsToBounds = true
        cell.Titlelabel.text = titles[indexPath.row].service_name
        cell.posterImageView.image = titles[indexPath.row].coverImage
        return cell
    }
//    let edge    : CGFloat = 10.0
//    let spacing : CGFloat = 10.0
//     func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//
//        // Get the selected item's data
//        let selectedItem = titles[indexPath.row]
//
//        // Create a new instance of the view controller to push
//        let detailViewController = ServicePreviewController()
//        detailViewController.cellData = selectedItem
        
//        self.navigationController?.pushViewController(detailViewController, animated: true)
        
        // Push the new view controller onto the navigation stack
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        let padding = UIEdgeInsets(top: 25, left: 10, bottom: 25, right: 10) // Set the desired padding values
        return padding
    }
    
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
//        return UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10)
//    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    
    

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let cellWidth = (collectionView.bounds.width)/2 - 90 // Adjust the divisor to change the number of cells per row
        let cellHeight = cellWidth + 10// Set the cell height equal to the width to make it square
        return CGSize(width: cellWidth, height: cellHeight)
        
    }
//    internal func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        let viewController = UIViewController()
//                viewController.view.backgroundColor = .green
//                navigationController.pushViewController(viewController, animated: true)
//        // assuming you have a navigation controller
//        }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return titles.count
    }
    
//    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath){
//
////        let title = titles[indexPath.row].service_title
//        collectionView.deselectItem(at: indexPath, animated: false)
//    }
    
}
