//
//  Post.swift
//  snapApp
//
//  Created by SnehithNitin on 7/8/16.
//  Copyright © 2016 Snehith. All rights reserved.
//

import Foundation

class Post{
    private var _imagePath:String
    private var _title:String
    private var _postDesc:String
    
    var imagePath:String{
        return _imagePath
    }
    
    var title:String{
            return _title
    }
    
    var postDesc:String{
        return _postDesc
    }
    
    
    
    init(imagePath:String, title:String, postDesc:String){
        self._imagePath=imagePath
        self._title=title
        self._postDesc=postDesc
    }
}