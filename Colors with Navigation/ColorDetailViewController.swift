//
//  ColorDetailViewController.swift
//  Colors with Navigation
//
//  Created by Yongyu Deng on 10/20/19.
//  Copyright © 2019 Yongyu Deng. All rights reserved.
//

import UIKit

class ColorDetailViewController: UIViewController {
    
    var color: Color?

    @IBOutlet weak var colorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorLabel.text = color?.name
        self.view.backgroundColor = color?.color
        self.title = color?.name
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
