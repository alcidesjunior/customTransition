
import UIKit

class ViewController: UIViewController, UIViewControllerTransitioningDelegate {
	
	@IBOutlet weak var showFirstViewButton:  UIButton!
	@IBOutlet weak var showSecondViewButton: UIButton!
	@IBOutlet weak var showThirdViewButton:  UIButton!
	@IBOutlet weak var showFourthViewButton: UIButton!
	
	let transition = CircularTransition()
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		// Arredondar os botões:
		
		showFirstViewButton.layer.cornerRadius = showFirstViewButton.frame.size.width / 2
		showSecondViewButton.layer.cornerRadius = showSecondViewButton.frame.size.width / 2
		showThirdViewButton.layer.cornerRadius = showThirdViewButton.frame.size.width / 2
		showFourthViewButton.layer.cornerRadius = showFourthViewButton.frame.size.width / 2
	}
	
	// Função de Transição que identifica qual botão foi clicado, e leva a cena refente a este botão:
	
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		
		if segue.identifier == "firstSegue" {
			
			let firstView = segue.destination as! FirstViewController
			
			firstView.transitioningDelegate = self
			firstView.modalPresentationStyle = .custom
		} else if segue.identifier == "secondSegue" {
			
			let secondView = segue.destination as! SecondViewController
			
			secondView.transitioningDelegate = self
			secondView.modalPresentationStyle = .custom
		} else if segue.identifier == "thirdSegue" {
			
			let thirdView = segue.destination as! ThirdViewController
			
			thirdView.transitioningDelegate = self
			thirdView.modalPresentationStyle = .custom
		} else if segue.identifier == "fourthSegue" {
			
			let fourthView = segue.destination as! FourthViewController
			
			fourthView.transitioningDelegate = self
			fourthView.modalPresentationStyle = .custom
		}
	}
	
	func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
		
		transition.transitionMode = .present
		
		if showFirstViewButton.isTouchInside {
			
			transition.startingPoint = showFirstViewButton.center
			transition.circleColor = showFirstViewButton.backgroundColor!
		} else if showSecondViewButton.isTouchInside {
			
			transition.startingPoint = showSecondViewButton.center
			transition.circleColor = showSecondViewButton.backgroundColor!
		} else if showThirdViewButton.isTouchInside {
			
			transition.startingPoint = showThirdViewButton.center
			transition.circleColor = showThirdViewButton.backgroundColor!
		} else if showFourthViewButton.isTouchInside {
			
			transition.startingPoint = showFourthViewButton.center
			transition.circleColor = showFourthViewButton.backgroundColor!
		}
		
		return transition
	}
	
	func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
		
		transition.transitionMode = .dismiss
		
		if showFirstViewButton.isTouchInside {
			
			transition.startingPoint = showFirstViewButton.center
			transition.circleColor = showFirstViewButton.backgroundColor!
		} else if showSecondViewButton.isTouchInside {
			
			transition.startingPoint = showSecondViewButton.center
			transition.circleColor = showSecondViewButton.backgroundColor!
		} else if showThirdViewButton.isTouchInside {
			
			transition.startingPoint = showThirdViewButton.center
			transition.circleColor = showThirdViewButton.backgroundColor!
		} else if showFourthViewButton.isTouchInside {
			
			transition.startingPoint = showFourthViewButton.center
			transition.circleColor = showFourthViewButton.backgroundColor!
		}
		
		return transition
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
	}
}
