import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var detailLabel: UILabel!
    @IBOutlet weak var detailImageView: UIImageView!
    @IBOutlet weak var segmentedControlOutlet: UISegmentedControl!
    
    @IBAction func changeSegmentedControl(_ sender: Any) {
        updateViews()
    }
    
    @IBAction func play(_ sender: Any) {
        detailImageView.startAnimating()
    }
    
    @IBAction func pause(_ sender: Any) {
        detailImageView.stopAnimating()
    }
    
    
    
    func updateViews() -> Double {
        var duration = 2.25
        
        switch segmentedControlOutlet.selectedSegmentIndex {
        case 0:
            duration = 3.75
            print(duration)
        case 1:
            duration = 2.25
            print(duration)
        case 2:
            duration = 0.75
            print(duration)
        default:
            break
        }
        return duration
    }
    
    var character: Model.Animation?
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        guard let character = character else { return }
        detailLabel.text = character.rawValue
        detailImageView.image = Model.shared.image(for: character)
        
        let cells = Model.shared.cells(for: character)
        detailImageView.animationImages = cells
        detailImageView.animationRepeatCount = 0
        detailImageView.animationDuration = updateViews()
        //detailImageView.startAnimating()
        
    }
}
