import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var imageAnimation: UIImageView!
    
    let character?    // I'm not sure
    
    override func viewWillAppear(_ animated: Bool) { // ?????
        super.viewWillAppear(animated)
        reloadInputViews()
    }
}
