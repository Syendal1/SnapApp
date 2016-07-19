//
//  AddPostVC.swift
//  snapApp
//
//  Created by SnehithNitin on 7/19/16.
//  Copyright © 2016 Snehith. All rights reserved.
//

import UIKit

class AddPostVC: UIViewController {

    @IBOutlet weak var titleField: UITextField!
    @IBOutlet weak var descriptionField: UITextField!
    @IBOutlet weak var postBtn: UIButton!
    @IBOutlet weak var postImg: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        postImg.layer.cornerRadius=postImg.frame.size.width/2
        postImg.clipsToBounds=true
        

    }

    @IBAction func backBtn(sender: UIButton) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    @IBAction func addImage(sender: UIButton) {
        sender.setTitle("", forState: .Normal)
        
    }
    @IBAction func postBtnPressed(sender: UIButton) {
        
    }

}
