//
//  ViewController.swift
//  Kindle
//
//  Created by Darragh on 11/11/17.
//  Copyright © 2017 Darragh. All rights reserved.
//

import UIKit

class Book {
    var title: String
    var author: String
    
    init(title: String, author: String) {
        self.title = title
        self.author = author
    }
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red
        //can provide custom code here
        
        
    }

}

