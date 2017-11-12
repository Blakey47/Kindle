//
//  Models.swift
//  Kindle
//
//  Created by Darragh on 11/12/17.
//  Copyright © 2017 Darragh. All rights reserved.
//

import UIKit

class Book {
    var title: String
    var author: String
    let image: UIImage
    let pages: [Page]
    
    init(title: String, author: String, image: UIImage, pages: [Page]) {
        self.title = title
        self.author = author
        self.image = image
        self.pages = pages
    }
}

class Page {
    let number: Int
    let text: String
    
    init(number: Int, text: String) {
        self.number = number
        self.text = text
    }
}
