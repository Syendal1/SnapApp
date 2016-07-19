//
//  postCell.swift
//  snapApp
//
//  Created by SnehithNitin on 7/8/16.
//  Copyright © 2016 Snehith. All rights reserved.
//

import UIKit

class postCell: UITableViewCell {

    
    @IBOutlet weak var postImg:UIImageView!
    @IBOutlet weak var titleLbl:UILabel!
    @IBOutlet weak var descLBL:UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        postImg.layer.cornerRadius=postImg.frame.size.width/2
        postImg.clipsToBounds=true
    }
    
    func configureCell(post:Post){
        titleLbl.text=post.title
        descLBL.text=post.postDesc
    }

    

}
