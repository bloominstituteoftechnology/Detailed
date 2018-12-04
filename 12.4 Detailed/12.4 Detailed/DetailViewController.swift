
import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var labelText: UILabel!
    
    @IBOutlet weak var imageView: UIImageView!
    
//    let charecter =
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let cells = Model.shared.cells(for: character)
        imageView.animationImages = cells
        imageView.animationRepeatCount = 0
        imageView.animationDuration = // FIGURE THIS PART OUT
            imageView.startAnimating()
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
