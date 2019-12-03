//
//  WebSiteViewController.swift
//  Honey Cook
//
//  Created by std_1210_10 on 2018. 6. 5..
//  Copyright © 2018년 Se-Eun Oh. All rights reserved.
//

import UIKit

class WebSiteViewController: UIViewController {
    @IBOutlet weak var webView: UIWebView!
    private let urlSite = "https://www.wtable.net"

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let url = URL(string: urlSite)
        let request = URLRequest(url: url!)
        webView.loadRequest(request)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        let webViewController = segue.destination as! ViewController
        
        
    }
    

}
