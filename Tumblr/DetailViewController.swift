//
//  DetailViewController.swift
//  Tumblr
//
//  Created by Christina S. on 10/1/18.
//  Copyright © 2018 Christina S. All rights reserved.
//

import UIKit

class DetailViewController: UITableViewCell {
    
    var index: Int!

    @IBOutlet var label: UILabel!
    
     let label.text = ("You tapped the cell at index \(index)")
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }


    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
