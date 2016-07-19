//
//  ViewController.swift
//  snapApp
//
//  Created by SnehithNitin on 7/8/16.
//  Copyright © 2016 Snehith. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView:UITableView!
    
    var posts=[Post]()
    
    
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate=self
        tableView.dataSource=self
//    
//        var post1 = Post(imagePath: "", title: "Post1", postDesc: "Yoyoyoyooyyooy")
//        var post2 = Post(imagePath: "", title: "Post2", postDesc: "Yoyoyoyooyyooy")
//        var post3 = Post(imagePath: "", title: "Post3", postDesc: "Yoyoyoyooyyooy")
        
        let post1 = Post(imagePath: "", title: "Post1", postDesc: "Yoyoyoyooyyooy")
        let post2 = Post(imagePath: "", title: "Post2", postDesc: "Yoyoyoyooyyooy")
        let post3 = Post(imagePath: "", title: "Post3", postDesc: "Yoyoyoyooyyooy")
        
        posts.append(post1)
        posts.append(post2)
        posts.append(post3)
        
        tableView.reloadData()
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts.count
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let post=posts[indexPath.row]
        if let cell=tableView.dequeueReusableCellWithIdentifier("PostCell")as?postCell{
            cell.configureCell(post)
            return cell
        }else{
            let cell=postCell()
            cell.configureCell(post)
            return cell
        }
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 79
    }



}

