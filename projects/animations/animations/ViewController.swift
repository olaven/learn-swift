import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var pink: UIView!
    @IBOutlet weak var purple: UIView!
    @IBOutlet weak var green: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        UIView.animate(withDuration: 1, animations: {
                self.pink.frame = CGRect(x: 100, y: 200, width: 150, height: 150)
            
            self.purple.backgroundColor = #colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1)
            
            self.green.frame.size = CGSize(width: 200, height: 200)
            }
        )
        
    }

}

