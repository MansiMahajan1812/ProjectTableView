//
//  tableViewCell.swift
//  ProjectTableVIew
//
//  Created by Mansi Mahajan on 6/18/18.
//  Copyright © 2018 Mansi Mahajan. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
   
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var label2: UILabel!
    
    
    var titleOfFirst: String = "" {
        didSet{
            
            label.text = titleOfFirst
        }
    }
    
    
    var titleOfSecond: String = "" {
        didSet{
            
            label2.text = titleOfSecond
        }
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
