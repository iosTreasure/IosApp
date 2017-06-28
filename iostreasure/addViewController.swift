//
//  addViewController.swift
//  iostreasure
//
//  Created by Андрей Илалов on 27.06.17.
//  Copyright © 2017 Андрей Илалов. All rights reserved.
//

import UIKit
import os.log


class addViewController: UIViewController {
    @IBOutlet weak var linkName: UITextField!

    @IBOutlet weak var saveButton1: UIButton!

    @IBOutlet weak var linkHeaderField: UITextField!
    
    @IBOutlet weak var authorField: UITextField!
    
    @IBOutlet weak var rankingField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        guard let button = sender as? UIButton, button === saveButton1 else {
            os_log("The save button was not pressed, cancelling", log: OSLog.default, type: .debug)
            return
        }
//        let theLink = linkName.text
//        let theHeader = linkHeaderField.text
//        let theauthor = authorField.text
//        let theRank = Int(rankingField.text!)//надо добавить защиту
        
        
    }
    

    
    
}
