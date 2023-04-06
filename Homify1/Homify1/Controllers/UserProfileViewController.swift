//
//  UserProfileViewController.swift
//  Homify1
//
//  Created by Aindrila Ray on 28/02/23.
//

import UIKit

class UserProfileViewController: UIViewController {
    
    
    private var userdetails: [User] = [
        
        User(user_name: "bradpitt01", password: "12345", FirstName: "Brad", LastName: "Pitt", profile_image: UIImage(named: "brad_pitt"), address: "Toronto, Canada", mobileNumber: "911-003-2002")
    
    ]
    
    private var Tablelabels: [UserLabels] = [
        
        UserLabels(labels: "Saved Addresses", info: [ Address(type: "Home",value:"221B, Baker Street, London, UK"), Address(type:"Home", value: "21, Jump Street, California, USA")], icon: UIImage(systemName:"house.fill")),
        UserLabels(labels: "Past Orders", info:[] , icon: UIImage(systemName: "wallet.pass.fill")),
        UserLabels(labels: "Payments", info: [], icon: UIImage(systemName: "wallet.pass.fill")),
        UserLabels(labels: "Settings",info: [], icon: UIImage(systemName: "ellipsis.vertical.bubble.fill")),
        UserLabels(labels: "SignOut", info: [], icon: UIImage(systemName: "rectangle.portrait.and.arrow.right"))
//
    
    ]
    
    
    private let userTable: UITableView = {

        let table = UITableView()
        table.register(UserTableViewCell.self, forCellReuseIdentifier: UserTableViewCell.identifier)
        return table

    }()
    
    private let profileImage: UIImageView = {
        
        let image = UIImageView()
        image.contentMode = .scaleAspectFill
        image.layer.cornerRadius = 70
        
        image.clipsToBounds = true
        image.image = UIImage(named: "brad_pitt")
        
        return image
        
    }()
    
    private let nameTitle: UILabel = {
        
        let name = UILabel()
        name.text = "Brad Pitt"
        name.textAlignment = .left
        name.font = .systemFont(ofSize: 25, weight: .semibold)
        return name
    }()
    
    private let contactTitle: UILabel = {
        
        let contact = UILabel()
        return contact
        
        
    }()
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "Profile"
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationItem.largeTitleDisplayMode = .always
        let headerView = UserProfileHeader(frame: CGRect(x: 0, y: 0, width: view.bounds.width, height: 420))
        userTable.tableHeaderView = headerView
        view.addSubview(userTable)

        
        userTable.delegate = self
        userTable.dataSource = self
//        applyConstraints()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        userTable.frame = view.bounds
    
    }
    
    
        
    
        
        

        


    }
    



extension UserProfileViewController: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Tablelabels.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: UserTableViewCell.identifier, for: indexPath) as? UserTableViewCell else {
            
            return UITableViewCell()
        }
        
        cell.titleLabel.text = Tablelabels[indexPath.row].labels
        cell.titlesPosterUIImageView.image = Tablelabels[indexPath.row].icon
        
        
        return cell
        
        
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let viewController = TableLabelViewController()
       viewController.cellData = Tablelabels[indexPath.row]
      self.navigationController?.pushViewController(viewController, animated: true)
        
    }
    
    @objc func buttonTapped(_ sender: UIButton) {
            let row = sender.tag
            
            // Get the data associated with the row that was tapped
            let data = Tablelabels[row]
            
            
            // Push the new view controller onto the navigation stack
            self.navigationController?.pushViewController(TableLabelViewController(), animated: true)
        }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 65    }
    
    
    
}

