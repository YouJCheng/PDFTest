//
//  ViewController.swift
//  PDFTest
//
//  Created by Yu-J.Cheng on 2018/5/24.
//  Copyright © 2018年 YuChienCheng. All rights reserved.
//

import UIKit
import QuickLook
import WebKit
import PDFKit
class ViewController: UIViewController {

    fileprivate var pdfURL: URL?
    
    @IBOutlet weak var activityInducatiorView: UIActivityIndicatorView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let bundle = Bundle.main
        let path = bundle.path(forResource: "iphone-6-6s-2016-info_ta", ofType: "pdf")
        pdfURL = URL(fileURLWithPath: path!)

    }
    @IBAction func quickLookBtnPress(_ sender: Any) {
        let preview = QLPreviewController()
        preview.dataSource = self
        self.present(preview, animated: true, completion: nil)
    }
    
    @IBAction func webViewBtnPress(_ sender: Any) {
        let vc = WebViewController()
        vc.url = pdfURL
        self.present(vc, animated: true, completion: nil)
    }

    @IBAction func pdfKitBtnPress(_ sender: Any) {
 
    }
}

// MARK: - QuickLook
extension ViewController: QLPreviewControllerDataSource, QLPreviewControllerDelegate {
    func numberOfPreviewItems(in controller: QLPreviewController) -> Int {
        return 1
    }

    func previewController(_ controller: QLPreviewController, previewItemAt index: Int) -> QLPreviewItem {
        return pdfURL! as QLPreviewItem
    }
}

