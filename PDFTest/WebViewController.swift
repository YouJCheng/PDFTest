//
//  WebViewController.swift
//  PDFTest
//
//  Created by Yu-J.Cheng on 2018/5/24.
//  Copyright © 2018年 YuChienCheng. All rights reserved.
//

import UIKit
import WebKit
class WebViewController: UIViewController {

    let webView = WKWebView()
    var url: URL?
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        let urlRequest = URLRequest(url: url!)
        webView.load(urlRequest)
    }

    func setupViews() {

        title = "View PDF Demo"
        view.backgroundColor = .white
        view.addSubview(webView)

        // setup AutoLayout...
        webView.translatesAutoresizingMaskIntoConstraints = false
        webView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        webView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        webView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        webView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }


}
