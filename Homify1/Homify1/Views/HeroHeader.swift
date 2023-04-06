//
//  HeroHeader.swift
//  Homify1
//
//  Created by Aindrila Ray on 26/02/23.
//

import UIKit


class HeroHeader: UIView {
    

    
    
    
    public let ongoingServices : [Ongoing] = [
        
        Ongoing(id: 001, service_type: "Cleaning", service_name: "Housekeeper", service_title: "Housekeeper", coverImage: UIImage(named: "broom"), overview: "Full house cleaning is a thorough cleaning process that involves deep cleaning every area of your home. This type of cleaning is typically done when you are moving into a new home, preparing your home for a special occasion or event, or just wanting to refresh and revitalize your living space.", rating: "3.5/5", valid: "28th December, 2022 to 28th March, 2023", daysLeft: "1", outofDays: "115", worker: Worker(ID: "001", name: "Balamurugan M.", gender: "Male", profileimage: UIImage(named: ""), rating: "8.7", domain: "Cleaning", languages: ["English", "Hindi", "Tamil"]) , nextVisit: "Today, 5:00 PM")
        
      
    
    
    
    ]
    
    public let ongoingView: UIView = {
        
        let ongoingView = UIView()
        ongoingView.layer.backgroundColor = UIColor.white.cgColor
        ongoingView.layer.cornerRadius = 10
        ongoingView.frame = CGRect(x: 10, y: 14, width: UIScreen.main.bounds.width - 25, height: UIScreen.main.bounds.height - 475)
        ongoingView.layer.borderWidth = 1
        ongoingView.layer.borderColor = UIColor.black.cgColor
        
        
        
        
        
        return ongoingView
        
    }()
    
    public let ongoingTableView: UITableView = {
        
        let table = UITableView(frame: .zero, style: .grouped)
        table.register(OngoingTableViewCell.self, forCellReuseIdentifier: OngoingTableViewCell.identifier)
        table.backgroundColor = .white
        
        
        
        return table
        
        
    }()
    
    public let ongoingTitle: UILabel = {
        
        let label = UILabel()
        label.text = "Ongoing Services"
        label.font = UIFont.systemFont(ofSize: 20, weight: .semibold)
        
        label.textColor = .black
        
        
        return label
        
        
    }()
    
    public let newButton: UIButton = {
        
        let button = UIButton()
        button.setTitle("Renew", for: .normal)
        button.layer.backgroundColor = UIColor.black.cgColor
        button.layer.borderColor = UIColor.systemBackground.cgColor
        button.layer.borderWidth = 2
        button.layer.cornerRadius = 7
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
        
        
    }()
    
    
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        layer.backgroundColor = UIColor.white.cgColor
        layer.cornerRadius = 12
        ongoingTableView.dataSource = self
        ongoingTableView.delegate = self
        
        
        
        
        
        
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        addSubview(ongoingView)
        addSubview(ongoingTitle)
        ongoingView.addSubview(newButton)
        ongoingView.addSubview(ongoingTableView)
    
        //        addSubview(ongoingTableView)
        //       addSubview(newButton)
        newButton.frame = CGRect(x: UIScreen.main.bounds.width/2 - 95, y: 300, width: 150, height: 50)
        ongoingTitle.frame = CGRect(x: UIScreen.main.bounds.width/2 - 95, y: 28, width: UIScreen.main.bounds.width, height: 50)
        ongoingTableView.frame = CGRect(x: 10, y: 40, width:UIScreen.main.bounds.width - 50, height: 250)
        
        //        addSubview(moreButton)
        //        addSubview(renewButton)
        
        
        
    }
    required init?(coder: NSCoder) {
        fatalError()
    }
    
}

extension HeroHeader: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ongoingServices.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: OngoingTableViewCell.identifier, for: indexPath) as? OngoingTableViewCell else {
            
            return UITableViewCell()
        }
        
        cell.ongoingLabel.text = ongoingServices[indexPath.row].service_name
        cell.ongoingImage.image = ongoingServices[indexPath.row].coverImage
        cell.outOfDaysLabel.text = "Plan Valid through \(ongoingServices[indexPath.row].valid)"
        cell.nextServicesLabel.text = "Next Slot: \(ongoingServices[indexPath.row].nextVisit)"
        cell.viewProfessional.tag = indexPath.row
        cell.viewProfessional.addTarget(self, action: #selector(buttonTapped(_:)), for: .touchUpInside)
        
        
        
        
        return cell
        
        
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let workerViewCController = WorkerProfileViewController()
        workerViewCController.cellData = ongoingServices[indexPath.row].worker
        
        
    }
    @IBAction func buttonTapped(_ sender: UIButton) {
        
        let row = sender.tag
        let data = ongoingServices[row].worker
        let workerviewController = WorkerProfileViewController()
        workerviewController.cellData = data
        
            }
        
        
    
    
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 270  }
    
    
    
}

