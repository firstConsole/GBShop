//
//  CatalogViewController+UITableViewDataSource.swift
//  GBShop
//
//  Created by Алексей Артамонов on 26.02.2023.
//

import UIKit

extension CatalogViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return goods[section].phones.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CatalogViewCell.identifier,
                                                 for: indexPath)
        
        let phoneName = goods[indexPath.row].phones[indexPath.row].name
        
        var content = cell.defaultContentConfiguration()
        
        content.text = phoneName
        
        cell.contentConfiguration = content
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
