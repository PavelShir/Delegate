//
//  SecondViewController.swift
//  Delegate
//
//  Created by brubru on 24.08.2022.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet var textField: UITextField!
    @IBOutlet var smileLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func goBackButtonPressed() {

    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        textField.endEditing(true)
    }
}

