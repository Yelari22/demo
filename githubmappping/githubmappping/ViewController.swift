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
            button.frame = CGRect(x: 20, y: 100, width: 100, height: 30)
            button.setTitle("Crash", for: [])
            button.addTarget(self, action: #selector(self.crashButton), for: .touchUpInside)
            view.addSubview(button)
        
        let detailButton = UIButton(type: .roundedRect)
        detailButton.frame = CGRect(x: 20, y: 200, width: 100, height: 30)
        detailButton.setTitle("Detail", for: [])
        detailButton.addTarget(self, action: #selector(self.detailButtonAction), for: .touchUpInside)
        view.addSubview(detailButton)
//        exit(0)

    }

    @IBAction func crashButtonTapped(_ sender: AnyObject) {
        fatalError()
    }
    
    @IBAction func crashButton() {
//        preconditionFailure()
        print(arrayString[2])

    }
    
    @IBAction func detailButtonAction() {
        self.navigationController?.present(DetailViewController(), animated: true, completion: nil)
    }
}

