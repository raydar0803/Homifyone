//
//  HomeViewController.swift
//  Homify1
//
//  Created by Aindrila Ray on 21/02/23.
//

import UIKit



enum Sections: Int{
    
    case DailyServices = 0
    case MonthlyServices = 1
    case TopRated = 2
    case RecommendedforYou = 3
}
class HomeViewController: UIViewController{
    
   
    let sectionTitles: [String] = [
    
       "Top-Rated", "Recommended for you"
    ]
    
    
    private var HomefeedTable: UITableView = {
        
        let table = UITableView(frame: .zero, style: .grouped)
        table.register(CollectionViewTableViewCell.self, forCellReuseIdentifier: CollectionViewTableViewCell.identifier)
        
        
        return table
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        view.addSubview(HomefeedTable)
        
        
        HomefeedTable.delegate = self
        HomefeedTable.dataSource = self
        
        
        configureNavbar()
        
        
        let headerView = HeroHeader(frame: CGRect(x: 0, y: 0, width: 100, height: 400))
       HomefeedTable.tableHeaderView = headerView
        
        

        // Do any additional setup after loading the view.
    }
    
    @objc func buttontapped(){
        
        navigationController?.pushViewController(CartViewController(), animated: true)
        
        
    }
    
    private func configureNavbar(){
        
        var image = UIImage(named: "homify logo")
        image = image?.withRenderingMode(.alwaysOriginal)
        
//        navigationItem.leftBarButtonItem =
//
//        UIBarButtonItem(image: image, style: .done, target: self, action: nil)
        
        navigationItem.rightBarButtonItems = [
        
            UIBarButtonItem(image: UIImage(systemName: "cart.fill"), style: .done, target: self, action: #selector(buttontapped))
            
        ]
        
        navigationController?.navigationBar.tintColor = .black
        
        
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
    
        HomefeedTable.frame = view.bounds
        HomefeedTable.backgroundColor = .systemBackground
        
    }
    
    

}

extension HomeViewController: UITableViewDelegate, UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return sectionTitles.count
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) ->UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: CollectionViewTableViewCell.identifier, for: indexPath) as? CollectionViewTableViewCell else {
            return UITableViewCell()
        }

        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }
    
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        guard let header = view as? UITableViewHeaderFooterView else {return}
        header.textLabel?.font = .systemFont(ofSize: 18, weight:.semibold)
        header.textLabel?.frame = CGRect(x: header.bounds.origin.x + 20, y: header.bounds.origin.y, width: 100, height: header.bounds.height)
        header.textLabel?.textColor = .black
        header.textLabel?.text = header.textLabel?.text?.capitalizeFirstLetter()
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sectionTitles[section]
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let defaultOffset = view.safeAreaInsets.top
        let offset = scrollView.contentOffset.y + defaultOffset
        
        navigationController?.navigationBar.transform = .init(translationX: 0, y: min(0, -offset))
    }
    
    
    
}
