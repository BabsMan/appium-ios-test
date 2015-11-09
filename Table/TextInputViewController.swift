//
//  TextInputViewController.swift
//  Table
//
//  Created by Graeme Grier on 23/10/2015.
//  Copyright © 2015 Graeme Grier. All rights reserved.
//

import UIKit

class TextInputViewController: UIViewController {

    var save: ((text: String) -> ())?
    
    @IBOutlet weak var searchTermInputField: UITextField!
    
    @IBAction func saveButtonTapped(sender: UIButton) {
        
        guard let enteredText = searchTermInputField.text else {
            return
        }
        save?(text: enteredText)
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        searchTermInputField.becomeFirstResponder()
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        searchTermInputField.resignFirstResponder()
    }
}
