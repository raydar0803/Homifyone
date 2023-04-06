//
//  WorkerProfileViewController.swift
//  Homify1
//
//  Created by Aindrila Ray on 28/03/23.
//

import UIKit

class WorkerProfileViewController: UIViewController {
    
    public var cellData: Worker?
    
    
    
    private let infoTable: UITableView = {

        let table = UITableView()
        table.register(WorkerTableViewCell.self, forCellReuseIdentifier: WorkerTableViewCell.identifier)
        return table

    }()
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(infoTable)
        
        
        title = "Profile"
        let headerView = WorkerProfileHeader(frame: CGRect(x: 0, y: 0, width: view.bounds.width, height: 420))
        if let data = cellData {
                    // Do something with the data...
            print("Received data: \(data.gender)")
                }
        infoTable.tableHeaderView = headerView
        infoTable.delegate = self
        infoTable.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        infoTable.frame = view.bounds
        
    }
    


}

extension WorkerProfileViewController: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: WorkerTableViewCell.identifier, for: indexPath) as? WorkerTableViewCell else {
            
            return UITableViewCell()
        }
        
    
        
        
        return cell
        
        
        
    }

    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 65    }
    
    
    
}


