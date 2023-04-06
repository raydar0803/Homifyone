//
//  CartViewController.swift
//  Homify1
//
//  Created by Aindrila Ray on 21/02/23.
//

import UIKit

class CartViewController: UIViewController {
    
    private var carttitle : [Service] = [
        
        Service(id: 008, service_type: "dog walker", service_name: "Dog Walker", service_title: "dog walker", amount: [Pricing(type: "Trial", cellColor: .orange, amount: "Rs. 2749", replacement: "1", monthly: "2749", subscription: "1 month"), Pricing(type: "Bestseller", cellColor: .yellow, amount: "Rs. 4496", replacement: "3", monthly: "749", subscription: "6 months"), Pricing(type: "Super-saver", cellColor: .green, amount: "Rs.5920", replacement: "5", monthly: "493", subscription: "12 months")] , coverImage: UIImage(named: "dogWalker"), overview: "A dog walker service offers professional care for dogs by experienced individuals or companies. Services include regular walks, exercise, feeding, and medication administration. It's convenient for busy pet owners or those unable to walk their dogs. The service ensures dogs receive proper exercise and care while their owners are away." , rating: "3.5/5", valid: "28th December, 2022 to 28th February, 2023")
        
        
        
    
    ]
    
    private var checkoutButton : UIButton =  {
        
        let button = UIButton()
        button.setTitle("Proceed to Checkout", for: .normal)
        button.layer.backgroundColor = UIColor.black.cgColor
        button.layer.borderColor = UIColor.systemBackground.cgColor
        button.layer.borderWidth = 2
        button.layer.cornerRadius = 20
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
        
        
    }()
    
    private let totalBill: UILabel = {
        let label = UILabel()
        label.text = "Total payable amount: INR 1500 + taxes"
        label.font = UIFont.systemFont(ofSize: 20, weight: .semibold)
        label.layer.backgroundColor = UIColor.systemGroupedBackground.cgColor
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    private let cartItemTable: UITableView = {
        
        let table = UITableView()
        table.register(TitleTableViewCell.self, forCellReuseIdentifier: TitleTableViewCell.identifier)
        return table
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "Shopping Cart"
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationItem.largeTitleDisplayMode = .always
        
        view.addSubview(cartItemTable)
        view.addSubview(checkoutButton)
         view.addSubview(totalBill)
        cartItemTable.delegate = self
        cartItemTable.dataSource = self
        applyConstraints()
        
        

        // Do any additional setup after loading the view.
    }
    
    private func applyConstraints(){
        
        let checkButtonConstraints = [
            checkoutButton.leadingAnchor.constraint(equalTo: cartItemTable.leadingAnchor, constant: 45),
            checkoutButton.trailingAnchor.constraint(equalTo: cartItemTable.trailingAnchor, constant: -45),
            checkoutButton.bottomAnchor.constraint(equalTo: cartItemTable.bottomAnchor, constant: -400),
           checkoutButton.widthAnchor.constraint(equalToConstant: 250),
            checkoutButton.heightAnchor.constraint(equalToConstant: 65)
        ]
        
        let totalBillConstraints = [
            
            totalBill.leadingAnchor.constraint(equalTo: cartItemTable.leadingAnchor),
            totalBill.trailingAnchor.constraint(equalTo: cartItemTable.trailingAnchor),
            totalBill.heightAnchor.constraint(equalToConstant: 65),
            totalBill.bottomAnchor.constraint(equalTo: checkoutButton.bottomAnchor, constant: 310)
            
        
        ]
        
//        let ViewMoreButtonConstraints = [
//
//            ViewMoreButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -45),
//            ViewMoreButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -50),
//            ViewMoreButton.widthAnchor.constraint(equalToConstant: 150),
//            ViewMoreButton.heightAnchor.constraint(equalToConstant: 45)
//        ]
        
        NSLayoutConstraint.activate(checkButtonConstraints)
        NSLayoutConstraint.activate(totalBillConstraints)
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        cartItemTable.frame = view.bounds
        
        
    }
    
}

extension CartViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return carttitle.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: TitleTableViewCell.identifier, for: indexPath) as? TitleTableViewCell else {
            return UITableViewCell()
        }
        cell.titleLabel.text = carttitle[indexPath.row].service_name
//        cell.titleLabelsec.text = carttitle[indexPath.row].amount
        cell.titlesPosterUIImageView.image = carttitle[indexPath.row].coverImage
        

        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 84
    }
    
}




