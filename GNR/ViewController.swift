//
//  ViewController.swift
//  GNR
//
//  Created by Vivian Phung on 1/18/19.
//  Copyright © 2019 Vivian Phung. All rights reserved.
//

import UIKit
import WebKit


class ViewController: UIViewController, WKUIDelegate {
    
    var webView: WKWebView!
    
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        view = webView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myURL = URL(string:"https://www.restroom.network/")
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
    }
}

