//
//  theListCell.swift
//  iostreasure
//
//  Created by Андрей Илалов on 27.06.17.
//  Copyright © 2017 Андрей Илалов. All rights reserved.
//

import UIKit

class theListCell: UITableViewCell {
//:MARK Proreties
    @IBOutlet weak var LinkLabel: UILabel!
    
    @IBOutlet weak var link2: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
