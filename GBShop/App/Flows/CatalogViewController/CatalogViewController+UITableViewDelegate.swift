//
//  +UITableViewDelegate.swift
//  GBShop
//
//  Created by Алексей Артамонов on 26.02.2023.
//

import UIKit

extension CatalogViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        50
    }
}
