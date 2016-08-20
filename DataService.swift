//
//  DataService.swift
//  snapApp
//
//  Created by SnehithNitin on 8/19/16.
//  Copyright © 2016 Snehith. All rights reserved.
//

import Foundation
import UIKit

class DataService{
    static let instance=DataService()
    
    private var _loadedPosts=[Post]()
    
    var loadedPosts:[Post]{
        return _loadedPosts
    }
    
    func savePosts(){
        
    }
    
    func loadPosts(){
        
    }
    
    func saveImageAndCreatePath(image: UIImage){
        
    }
    
    func imageForPath(path:String){
        
    }
    
    func addPosts(post:Post){
        _loadedPosts.append(post)
        savePosts()
        loadPosts()
    }
    
}
