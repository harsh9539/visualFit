import UIKit

class SetGoalViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    @IBOutlet weak var pickerView: CustomGoalUIPickerView!
    let arr = Array(0...7)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        overrideUserInterfaceStyle = .dark
        pickerView.delegate = self
        pickerView.dataSource = self
    }
    
}


extension SetGoalViewController{
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        arr.count
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        var pickerLabel: UILabel? = (view as? UILabel)
        if pickerLabel == nil {
            pickerLabel = UILabel()
            pickerLabel?.font = UIFont(name: "System", size: 25)
            pickerLabel?.textAlignment = .center
            pickerLabel?.textColor = .primary
        }
        if arr[row] <= 1 {
            pickerLabel?.text = "\(arr[row]) day"
        }
        else{
            pickerLabel?.text = "\(arr[row]) days"
        }
        
        return pickerLabel!
    }
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 40
    }
    
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        if let changeSelectedRow = pickerView.view(forRow: row, forComponent: component) as? UILabel{
            print(changeSelectedRow)
        }
        else{
            print("Error")
        }
        
        
//        if let selectedRowView = pickerView.view(forRow: row, forComponent: component) as? UILabel {
//                // Customize the appearance of the selected row
//                selectedRowView.attributedText = NSAttributedString(string: "\(arr[row])", attributes: [
//                    NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 40),
//                    NSAttributedString.Key.foregroundColor: UIColor.red
//                ])
//            } else {
//                print("Error: Failed to get the selected row view")
//            }
                
            // Print the selected number
            let selectedNum = arr[row]
            print(selectedNum)
            
    }
}
