import UIKit

class SecondViewController: UIViewController, IHaveTextProvider {

    @IBOutlet weak var label: UILabel!
    
    weak var textProvider: TextProvider? 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = textProvider!.Text
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

