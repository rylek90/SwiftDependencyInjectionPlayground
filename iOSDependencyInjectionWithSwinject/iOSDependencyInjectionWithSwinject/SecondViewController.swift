import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    
    var textProvider: ITextProvider?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = textProvider!.Text
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
