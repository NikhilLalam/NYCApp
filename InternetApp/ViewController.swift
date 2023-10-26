//
//  ViewController.swift
//  InternetApp
//
//  Created by Nikhil Lalam on 10/25/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var schoolDataButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func SchoolDataAction(_ sender: UIButton) {
        
        let getData = GetData()
        let url = "https://www.google.com"
        getData.fetchData(url: url) { output in
            print("The html data of the URL :\(url) is \(output)")
        }
    }
}
