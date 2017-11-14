//
//  WebViewController.swift
//  Konverter
//
//  Created by Mirza Durakovic on 14/11/2017.
//  Copyright © 2017 Mirza Durakovic. All rights reserved.
//

import UIKit
import WebKit

class WebViewController: UIViewController {
    // MARK: Properties:
    var webView: WKWebView!
    
    override func loadView() {
        super.loadView()
        webView = WKWebView()
        webView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(webView)
        let top = webView.topAnchor.constraint(equalTo: view.topAnchor, constant: 20)
        let bottom = webView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        let leading = webView.leadingAnchor.constraint(equalTo: view.leadingAnchor)
        let trailing = webView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        top.isActive = true
        bottom.isActive = true
        leading.isActive = true
        trailing.isActive = true
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = URL(string: "https://www.facebook.com")
        let urlRequest = URLRequest(url: url!)
        webView.load(urlRequest)
        webView.allowsBackForwardNavigationGestures = true
    }
    
}
