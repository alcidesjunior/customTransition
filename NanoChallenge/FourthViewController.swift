
import UIKit

class FourthViewController: UIViewController {

	@IBOutlet weak var dismissButton: UIButton!
	
	@IBAction func closeModal(_ sender: UIButton) {
		
		dismiss(animated: true, completion: nil)
	}
	override func viewDidLoad() {
        super.viewDidLoad()
		
		dismissButton.layer.cornerRadius = dismissButton.frame.size.width / 2
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
