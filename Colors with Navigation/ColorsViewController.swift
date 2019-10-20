//
//  ColorsViewController.swift
//  Colors with Navigation
//
//  Created by Yongyu Deng on 10/20/19.
//  Copyright © 2019 Yongyu Deng. All rights reserved.
//

import UIKit

class ColorsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    var colors = [Color(name: "red", color: UIColor.red),
                  Color(name: "orange", color: UIColor.orange),
                  Color(name: "yellow", color: UIColor.yellow),
                  Color(name: "green", color: UIColor.green),
                  Color(name: "blue", color: UIColor.blue),
                  Color(name: "purple", color: UIColor.purple),
                  Color(name: "brown", color: UIColor.brown)]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "colorCell", for: indexPath)
        
        cell.textLabel?.text = colors[indexPath.row].name
        cell.backgroundColor = colors[indexPath.row].color
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.cellForRow(at: indexPath)?.isSelected = false
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Colors"

        // Do any additional setup after loading the view.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? ColorDetailViewController, let row = tableView.indexPathForSelectedRow?.row{
            destination.color = colors[row]
        }
    }

}
