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
    let pages: [Page]
    let coverImageUrl: String
    
    init(dictionary: [String: Any]) {
        self.title = dictionary["title"] as? String ?? ""
        self.author = dictionary["author"] as? String ?? ""
        self.coverImageUrl = dictionary["coverImageUrl"] as? String ?? ""
        
        var bookPages = [Page]()
        
        if let pagesDictionaries = dictionary["pages"] as? [[String: Any]] {
            
            for pageDictionary in pagesDictionaries {
                
                if let pageText = pageDictionary["text"] as? String {
                    let page = Page(number: 1, text: pageText)
                    bookPages.append(page)
                }
            }
        }
        pages = bookPages
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
