import UIKit

class FitnessGoalViewController: UIViewController  {
    @IBOutlet weak var pickerView: UIPickerView!
    
  
    @IBOutlet weak var img1Button: UIButton!
    @IBOutlet weak var img2Button: UIButton!
    let arr = Array(1...7)
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        overrideUserInterfaceStyle = .dark
        pickerView.delegate = self
        pickerView.dataSource = self
        
        img1Button.layer.cornerRadius = 75
        img1Button.clipsToBounds = true
        img1Button.backgroundColor = .primary
        img1Button.tintColor = .white
        
        
        img2Button.layer.cornerRadius = 75
        img2Button.clipsToBounds = true

    }
    
    
    
}


extension FitnessGoalViewController : UIPickerViewDelegate, UIPickerViewDataSource{
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        arr.count
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return "\(arr[row])"
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let selectedNum = arr[row]
        
        print("Selected number is \(selectedNum)")
        
        // Get the selected row view
        let selectedRowView = pickerView.view(forRow: row, forComponent: component)
        
        // Customize the appearance of the selected row
        if let label = selectedRowView as? UILabel {
            label.font = UIFont.boldSystemFont(ofSize: 20) // Change font size
            label.textColor = UIColor.red // Change text color
            // You can also adjust the background color if needed
        }
    }
}
