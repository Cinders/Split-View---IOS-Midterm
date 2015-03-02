import UIKit

class ColorViewController: UIViewController {

    var color = Color(displayName: "Gray", color: UIColor.grayColor())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "\(color.displayName) Color"
        view.backgroundColor = color.color
        
    }

}
