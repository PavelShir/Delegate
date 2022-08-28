//
//  SecondViewController.swift
//  Delegate
//
//  Created by brubru on 24.08.2022.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var textField: UITextField!
    @IBOutlet var smileLabel: UILabel!
    
    var smileLabelText: String!
    var delegate: SecondViewControllerDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        smileLabel.text = smileLabelText
        textField.delegate = self
    }

    @IBAction func goBackButtonPressed() {
        smileLabelText = smileLabel.text
        delegate.tranferSmile(labelSmile: smileLabelText)
        dismiss(animated: true)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        textField.endEditing(true)
        textFieldDidEndEditing(textField)
    }
    
}

extension SecondViewController {
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        
        guard let textValue = textField.text else { return }
       
        switch textValue {
        case "😀", "😎", "🙃", "🤩", "🤬", "🥸", "🙂":
            smileLabel.text = textValue
        default:
            showAlert(with: "Please, enter correct info", and: "Only this: 😀, 😎, 🙃, 🤩, 🤬, 🥸, 🙂")
                return
            }
        }
    }

extension SecondViewController {
  
    private func showAlert(with title: String, and massage: String) {
        let alert = UIAlertController(title: title, message: massage, preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "Ok", style: .default)
        alert.addAction(okAction)
        
        present(alert, animated: true)
    }
}
