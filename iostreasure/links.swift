//
//  links.swift
//  iostreasure
//
//  Created by Андрей Илалов on 27.06.17.
//  Copyright © 2017 Андрей Илалов. All rights reserved.
//

import UIKit

class links {
    var theLink: String = ""
    var author: String = ""
    var rating: Int = 0
    var theLinkHeader: String = ""
    
    //MARK: Initialization
    
    init?(theLink: String, theLinkHeader: String, rating: Int, author: String) {
        
        if theLink.isEmpty || theLinkHeader.isEmpty || rating < 0 || author.isEmpty  {
            return nil
        }
        
        
        self.theLink = theLink
        self.theLinkHeader = theLinkHeader
        self.rating = rating
        self.author = author
        
    }
    
    
}


