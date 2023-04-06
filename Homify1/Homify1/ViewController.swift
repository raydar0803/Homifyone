//
//  ViewController.swift
//  Homify1
//
//  Created by Aindrila Ray on 21/02/23.
//

import UIKit

class ViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        // Do any additional setup after loading the view.
        
        let vc1 = UINavigationController(rootViewController: HomeViewController())
        let vc2 = UINavigationController(rootViewController: ServicesViewController())
        let vc3 = UINavigationController(rootViewController: UpcomingViewController() )
        let vc4 = UINavigationController(rootViewController: UserProfileViewController())
        
        setViewControllers([vc1, vc2, vc3, vc4], animated: true)
        
        vc1.tabBarItem.image = UIImage(systemName: "house.fill")
        vc2.tabBarItem.image = UIImage(systemName: "wrench.and.screwdriver")
        vc3.tabBarItem.image = UIImage(systemName: "bolt.horizontal.circle")
        vc4.tabBarItem.image = UIImage(systemName: "person.fill")
        
        vc1.title = "Home"
        vc2.title = "Services"
        vc3.title = "Upcoming Services"
        vc4.title = "User Profile"
        
        tabBar.tintColor = .label
        
        
    }
    
    


}

