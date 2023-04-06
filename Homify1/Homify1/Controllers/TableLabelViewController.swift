//
//  TableLabelViewController.swift
//  Homify1
//
//  Created by Aindrila Ray on 30/03/23.
//

import UIKit

class TableLabelViewController: UIViewController {
    
    public var cellData: UserLabels?
    
    private let tableView: UITableView = {
        
        let table = UITableView()
        return table
        
    }()
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(tableView)
        
        if let data = cellData {
           
            print("Received data: \(data)")
            if cellData?.labels == "Saved Addresses" {
                
            
                
            }
            
            
        }
        title = cellData?.labels
        
       
        
        
        
        
        

        // Do any additional setup after loading the view.
    }
    



}
