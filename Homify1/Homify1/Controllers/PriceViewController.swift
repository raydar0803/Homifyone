//
//  PriceViewController.swift
//  Homify1
//
//  Created by Aindrila Ray on 27/03/23.
//

import UIKit

class PriceViewController: UIViewController {
    
    public var cellData: [Pricing]?
    
    public var label: UILabel = {
        
        let label = UILabel()
        label.text = "Find a plan that fits you."
        label.textColor = .darkGray
        label.font = UIFont(name: "HelveticaNeue-Bold", size: 22)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
        
    }()
    
    
    
    public let priceTable: UITableView = {
        
        let table = UITableView(frame: .zero, style: .grouped)
        table.register(PriceTableViewCell.self, forCellReuseIdentifier: PriceTableViewCell.identifier)
        
        return table
        
        
        
        
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
//        view.backgroundColor = .systemGroupedBackground
        title = "Pricing"
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationItem.largeTitleDisplayMode = .always
        priceTable.delegate = self
        priceTable.dataSource = self
        priceTable.separatorInset = UIEdgeInsets(top: 20, left: 20, bottom: 0, right: 20)

        if let data = cellData {
            print("Received data: \(data)")
        }
        
        view.addSubview(priceTable)
        view.addSubview(label)
        
        
        

        // Do any additional setup after loading the view.
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        label.frame = CGRect(x: 10, y: 125, width: UIScreen.main.bounds.width, height: 100)
        priceTable.frame = CGRect(x: 10, y: 235, width: UIScreen.main.bounds.width - 20, height: UIScreen.main.bounds.height)
    }
    

}

extension PriceViewController: UITableViewDelegate, UITableViewDataSource {
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: PriceTableViewCell.identifier, for: indexPath) as? PriceTableViewCell else {
            
            return UITableViewCell()
        }
        cell.titleLabel.text = "\(cellData?[indexPath.row].amount ?? "None" ) (\(cellData?[indexPath.row].type ?? "None"))"
        cell.subscriptionLabel.text = "Subscription period: \(cellData?[indexPath.row].subscription ?? "None")"
        cell.monthlyLabel.text = "Rs. \(cellData?[indexPath.row].monthly ?? "None")/month"
        
        cell.textView.text = "Replacements allowed: \(cellData?[indexPath.row].replacement ?? "None" ) (No questions asked!)"
        cell.textView.textColor = .black
        cell.view.backgroundColor = cellData?[indexPath.row].cellColor

        cell.textView.font = UIFont.systemFont(ofSize: 14.5)
        cell.layer.borderColor = cellData?[indexPath.row].cellColor.cgColor
        cell.layer.borderWidth = 1
        cell.layer.cornerRadius = 10
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let cellspacing = 10.0
        return 300 + cellspacing * 10.0 }
    
    
    
}
