import UIKit

class SetGoalViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    @IBOutlet weak var pickerView: CustomGoalUIPickerView!
    let arr = Array(1...7)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        overrideUserInterfaceStyle = .dark
        pickerView.delegate = self
        pickerView.dataSource = self
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        arr.count
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if arr[row] == 1 {
            return "\(arr[row]) day"
        }
        else{
            return "\(arr[row]) days"
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
//        let selectedNum = arr[row]
//        
//        print("Selected number is \(selectedNum)")
//        
//        // Get the selected row view
//        let selectedRowView = pickerView.view(forRow: row, forComponent: component)
//        
//        // Customize the appearance of the selected row
//        if let label = selectedRowView as? UILabel {
//            label.font = UIFont.boldSystemFont(ofSize: 20) // Change font size
//            label.textColor = UIColor.red // Change text color
//            // You can also adjust the background color if needed
//        }
        // Get the selected row view
                let selectedRowView = pickerView.view(forRow: row, forComponent: component) as? UILabel
                
                // Customize the appearance of the selected row
                if let label = selectedRowView {
                    label.attributedText = NSAttributedString(string: "\(arr[row])", attributes: [
                        NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 40),
                        NSAttributedString.Key.foregroundColor: UIColor.red
                    ])
                }
                
                // Print the selected number
                let selectedNum = arr[row]
                print("Selected number is \(selectedNum)")
    }
}
