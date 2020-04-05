import UIKit
import SwiftUI

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func openSwiftUI(_ sender: Any) {
        let nextView = UIHostingController(rootView:
            VStack {
                Text("Hello SwiftUI!")
                    .font(.system(size: 50))
                Image("big-image")
            }
        )
        self.present(nextView, animated: true, completion: nil)
        
    }
}
