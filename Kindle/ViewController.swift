//
//  ViewController.swift
//  Kindle
//
//  Created by Darragh on 11/11/17.
//  Copyright © 2017 Darragh. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var books: [Book]?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Kindle"
        
        view.backgroundColor = .red
        //can provide custom code here
        
        setupBooks()
    }
    
    func setupBooks() {
        let page1 = Page(number: 1, text: "Text for the first page")
        let page2 = Page(number: 2, text: "Text for the second page")
        
        let pages = [page1, page2]
        
        let book = Book(title: "Steve Jobs", author: "Walter Iscaacson", pages: pages)
        
        let book2 = Book(title: "Bill Gates: A Biography", author: "Michael Becraft", pages: [
            Page(number: 1, text: "Text for page 1"),
            Page(number: 2, text: "Text for page 2"),
            Page(number: 3, text: "Text for page 3"),
            Page(number: 4, text: "Text for page 4")
            ])
        
        self.books = [book, book2]
        
        //safely unwrapping an optional
        if let unwrappedBooks = self.books {
            for book in unwrappedBooks {
                print(book.title)
                print(book.author)
                for page in book.pages {
                    print(page.text)
                }
            }
        }
    }
}

