//
//  ViewController.swift
//  githubmappping
//
//  Created by Prashant patel on 12/18/20.
//  Copyright © 2020 Prashant patel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let arrayString = ["a", "b"]
    override func viewDidLoad() {
        super.viewDidLoad()
            let button = UIButton(type: .roundedRect)
            button.frame = CGRect(x: 20, y: 50, width: 100, height: 30)
            button.setTitle("Crash", for: [])
            button.addTarget(self, action: #selector(self.crashButton), for: .touchUpInside)
            view.addSubview(button)
//        exit(0)

    }

    @IBAction func crashButtonTapped(_ sender: AnyObject) {
        fatalError()
    }
    
    @IBAction func crashButton() {
//        preconditionFailure()
        print(arrayString[2])

    }
}

