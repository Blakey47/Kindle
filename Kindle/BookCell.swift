//
//  BookCell.swift
//  Kindle
//
//  Created by Darragh on 11/12/17.
//  Copyright © 2017 Darragh. All rights reserved.
//

import UIKit

class BookCell: UITableViewCell {
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        backgroundColor = .yellow
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}




