//
//  AddPostVC.swift
//  snapApp
//
//  Created by SnehithNitin on 7/19/16.
//  Copyright © 2016 Snehith. All rights reserved.
//

import UIKit

class AddPostVC: UIViewController,UIImagePickerControllerDelegate,UINavigationControllerDelegate {

    @IBOutlet weak var titleField: UITextField!
    @IBOutlet weak var descriptionField: UITextField!
    @IBOutlet weak var postBtn: UIButton!
    @IBOutlet weak var postImg: UIImageView!
    
    var imagePicker:UIImagePickerController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        postImg.layer.cornerRadius=postImg.frame.size.width/2
        postImg.clipsToBounds=true
        
        imagePicker=UIImagePickerController()
        imagePicker.delegate=self
        

    }

    @IBAction func backBtn(sender: UIButton) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    @IBAction func addImage(sender: UIButton) {
        sender.setTitle("", forState: .Normal)
        presentViewController(imagePicker, animated: true, completion: nil)
  
        
    }
    @IBAction func postBtnPressed(sender: UIButton) {
        
    }

    func imagePickerController(picker: UIImagePickerController, didFinishPickingImage image: UIImage, editingInfo: [String : AnyObject]?) {
        imagePicker.dismissViewControllerAnimated(true, completion: nil)
        postImg.image=image
    }
}
