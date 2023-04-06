//
//  UpcomingViewController.swift
//  Homify1
//
//  Created by Aindrila Ray on 03/03/23.
//

import UIKit

class UpcomingViewController: UIViewController {
    
    public let upcomingServices : [Upcoming] = [
        
        Upcoming(id: 001, service_type: "Cooking/Catering/Chef", service_name: "Chef", service_title: "Chef", coverImage: UIImage(named: "chef"), overview: "Good cooking at your space, with specially trained cooks and service.", rating: "3.5/5", valid: "2nd March, 2023 to 2nd May, 2023", daysLeft: "90", outofDays: "90", worker: Worker(ID: "009", name: "Shanta B.", gender: "Female",profileimage: UIImage(named: ""), rating: "8.7", domain: "Cooking", languages: ["English", "Hindi", "Marathi"]) , nextVisit: "Sunday, 12:00 PM"),
        
        Upcoming(id: 001, service_type: "Driving", service_name: "Driver", service_title: "Driver", coverImage: UIImage(named: "driver"), overview: "Driver services refer to a variety of services related to driving and transportation. These services are typically provided by government agencies or private companies and are designed to help drivers obtain licenses, comply with regulations, and maintain safe driving practices.", rating: "3.5/5", valid: "2nd March, 2023 to 2nd May, 2023", daysLeft: "90", outofDays: "90", worker: Worker(ID: "0015", name: "Rajnikanth Bishnoi", gender: "Male", profileimage: UIImage(named: ""), rating: "8.7", domain: "Driving", languages: ["English", "Hindi", "Odiya"]) , nextVisit: "Sunday, 6:00 PM")
        
        
        
    
    ]
    
    public let upcomingTableView: UITableView = {
        
        let table = UITableView(frame: .zero, style: .grouped)
        table.register(UpcomingTableViewCell.self, forCellReuseIdentifier: UpcomingTableViewCell.identifier)
        table.backgroundColor = .white
        
        
        
        return table
        
        
    }()
    


    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGroupedBackground
        title = "Upcoming"
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationItem.largeTitleDisplayMode = .always
        upcomingTableView.delegate = self
        upcomingTableView.dataSource = self
        
        
        
        
        // Do any additional setup after loading the view.
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        view.addSubview(upcomingTableView)
        upcomingTableView.frame = view.bounds
    }
    

   

}

extension UpcomingViewController: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return upcomingServices.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: UpcomingTableViewCell.identifier, for: indexPath) as? UpcomingTableViewCell else {
            
            return UITableViewCell()
        }
        
        cell.upcomingLabel.text = upcomingServices[indexPath.row].service_name
        cell.upcomingImage.image = upcomingServices[indexPath.row].coverImage
        cell.outOfDaysLabel.text = "Plan Valid through \(upcomingServices[indexPath.row].valid)"
        cell.nextServicesLabel.text = "Next Slot: \(upcomingServices[indexPath.row].nextVisit)"
        cell.viewProfessional.tag = indexPath.row
        cell.viewProfessional.addTarget(self, action: #selector(buttonTapped(_:)), for: .touchUpInside)
        
        
        
        
        return cell
        
        
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let workerViewCController = WorkerProfileViewController()
        workerViewCController.cellData = upcomingServices[indexPath.row].worker
        
        
    }
    @IBAction func buttonTapped(_ sender: UIButton) {
        
        let row = sender.tag
        let data = upcomingServices[row].worker
        let workerviewController = WorkerProfileViewController()
        workerviewController.cellData = data
        self.navigationController?.pushViewController(workerviewController, animated: true)
        
            }
        
        
    
    
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 270  }
    
    
    
}

