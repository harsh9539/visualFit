//
//  CustomGoalUIPickerView.swift
//  VisualFit
//
//  Created by Goyal Harsh on 18/04/24.
//

import UIKit

class CustomGoalUIPickerView: UIPickerView {

    var selectedRowFont: UIFont = UIFont.boldSystemFont(ofSize: 40)
    var selectedRowColor: UIColor = UIColor.red
    
    override func view(forRow row: Int, forComponent component: Int) -> UIView? {
        let view = super.view(forRow: row, forComponent: component)
        
        if let label = view as? UILabel, row == selectedRow(inComponent: component) {
            // Customize the appearance of the selected row
            label.font = selectedRowFont
            label.textColor = selectedRowColor
        }
        
        return view
    }

}
