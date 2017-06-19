//
//  classDataFood.swift
//  CollectionStar
//
//  Created by DinhTien on 6/15/17.
//  Copyright © 2017 DinhTien. All rights reserved.
//

import Foundation

class DataFood {
    
    var name: String = ""
    var imgPhoto: String = ""
    
//    var imgPhoto: 
    var point: Int = 0
    var dataImage: Data?
    
    init(name1: String, img: String, point1: Int) {
        self.name = name1
        self.imgPhoto = img
        self.point = point1
    }
    
    init(name1: String, img: String, point1: Int, data: Data) {
        
        self.name = name1
        self.imgPhoto = img
        self.point = point1
        self.dataImage = data
    }
    
}
