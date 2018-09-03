//
//  ViewController.swift
//  CinemaHub
//
//  Created by Tran Tuyen on 9/2/18.
//  Copyright © 2018 ninjaKID. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        API.getNewMovies(page: 1, completion: { movies in
            
        })
        
        
    }



}

