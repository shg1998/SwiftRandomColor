//
//  ColorsDetailVC.swift
//  RandomColor
//
//  Created by MohammadHossein Nejadhendi on 9/19/1401 AP.
//

import UIKit

class ColorsDetailVC: UIViewController {

    var color : UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = color ?? .green
        // Do any additional setup after loading the view.
    }
    
}
