import UIKit
import WebKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        let webView = WKWebView(frame: view.bounds)
        webView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        view.addSubview(webView)
        let url = Bundle.main.url(forResource: "yakisikli_misirci_fen sonn", withExtension: "html")!
        webView.loadFileURL(url, allowingReadAccessTo: url.deletingLastPathComponent())
    }
}
