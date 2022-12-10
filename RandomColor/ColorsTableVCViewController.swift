//
//  ColorsTableVCViewController.swift
//  RandomColor
//
//  Created by MohammadHossein Nejadhjendi on 9/19/1401 AP.
//

import UIKit

class ColorsTableVCViewController: UIViewController{
    
    var colors:[UIColor] = []

    enum Cells{
        static let colorCell = "ColorCell"
    }
    
    enum Segues{
        static let toDetails = "ToColorsDetailVC"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.createRandomColors()
        // Do any additional setup after loading the view.
    }
    
    func createRandomColors(){
        for _ in 0..<50 {
            colors.append(.random())
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! ColorsDetailVC
        destinationVC.color = sender as? UIColor
    }
}


extension ColorsTableVCViewController:UITableViewDelegate,UITableViewDataSource{
    
    // how many rows i need to show :)
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.colors.count
    }
    
    // what will be shown in these rows :)
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: Cells.colorCell) else{
            return UITableViewCell()
        }
        let color = self.colors[indexPath.row]
        cell.backgroundColor = color
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let color = colors[indexPath.row]
        performSegue(withIdentifier: Segues.toDetails, sender: color)
    }

}
