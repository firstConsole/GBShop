//
//  CatalogViewController.swift
//  GBShop
//
//  Created by Алексей Артамонов on 26.02.2023.
//

import UIKit

final class CatalogViewController: UIViewController {
    
    var tableView: UITableView = {
        let tableView = UITableView()
        
        tableView.register(CatalogViewCell.self,
                           forCellReuseIdentifier: CatalogViewCell.identifier)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        return tableView
    }()
    
    var goods: [GoodsResponse] = NetworkService().decodeJSON()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(tableView)
        
        tableView.dataSource = self
        tableView.delegate = self
        
        setupTableView()
    }
    
    func setupTableView() {
        NSLayoutConstraint.activate([
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
}
