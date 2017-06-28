//
//  webViewController.swift
//  iostreasure
//
//  Created by Андрей Илалов on 28.06.17.
//  Copyright © 2017 Андрей Илалов. All rights reserved.
//

import UIKit

class webViewController: UIViewController {
    @IBOutlet weak var linkWebView: UIWebView!
    @IBOutlet weak var label1: UILabel!
    var link = links(theLink: "fdgd", theLinkHeader: "dfgdfg", rating: 3, author: "dfgdfgg")
    
    override func viewDidLoad() {

        super.viewDidLoad()
        let defaultURL = link?.theLink
        print(defaultURL)
        linkWebView.loadRequest(NSURLRequest(url: NSURL(string: defaultURL!)! as URL) as URLRequest)
        // Do any additional setup after loading the view.
        label1.text = link?.author
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        

    }


}
