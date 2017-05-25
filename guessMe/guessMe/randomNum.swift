//
//  randomNum.swift
//  guessMe
//
//  Created by Dayakar Reddy Marri on 5/25/17.
//  Copyright © 2017 dhaya. All rights reserved.
//

import Foundation
struct RandomNum {
    
    func random() -> Int {
        return Int(arc4random_uniform(10))
    }
}
