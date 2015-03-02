
import UIKit

struct Color {
    let displayName: String
    let color: UIColor
}

class SelectColorTableViewController: UITableViewController {

    private let colorCellIdentifier = "colorCell"
    
    var collapseDetailViewController: Bool  = true
    
    private let colors = [
        Color(displayName: "Green", color: UIColor.greenColor()),
        Color(displayName: "Blue", color: UIColor.blueColor()),
        Color(displayName: "Yellow", color: UIColor.yellowColor()),
        Color(displayName: "Purple", color: UIColor.purpleColor()),
        Color(displayName: "Orange", color: UIColor.orangeColor()),
        Color(displayName: "Magenta", color: UIColor.magentaColor()),
        Color(displayName: "Brown", color: UIColor.brownColor()),
        Color(displayName: "Cyan", color: UIColor.cyanColor()),
        Color(displayName: "Red", color: UIColor.redColor())
    ]
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "show_detail_segue_id" {
            
            var colorViewController: ColorViewController!
            
            if let colorNavigationController = segue.destinationViewController as? UINavigationController {

                
                colorViewController = colorNavigationController.topViewController as ColorViewController
                colorViewController.navigationItem.leftBarButtonItem = self.splitViewController?.displayModeButtonItem()
                colorViewController.navigationItem.leftItemsSupplementBackButton = true
            } else {

                colorViewController = segue.destinationViewController as ColorViewController
            }
            if let selectedRowIndexPath = tableView.indexPathForSelectedRow() {
                let color = colors[selectedRowIndexPath.row]
                colorViewController.color = color
            }
        }
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier(colorCellIdentifier) as UITableViewCell
        
        let color = colors[indexPath.row]
        cell.textLabel?.text = color.displayName
        
        return cell
    }

    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        collapseDetailViewController = false
    }

}
