//
//  ShowGroupDetailCell.swift
//  breakpoint
//
//  Created by Artur Zarzecki on 09/03/2021.
//

import UIKit

class ShowGroupDetailCell: UITableViewCell {
    
    @IBOutlet weak var groupNameLbl: UILabel!
    
    func configureCell(groupName: String) {
        self.groupNameLbl.text = groupName
    }
}
