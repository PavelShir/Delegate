//
//  ViewController.swift
//  Delegate
//
//  Created by brubru on 24.08.2022.
//

import UIKit

protocol SecondViewControllerDelegate {
    
    func tranferSmile(labelSmile: String)
}

class FirstViewController: UIViewController {
    
    @IBOutlet var smileLabel: UILabel!
  
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let secondVC = segue.destination as? SecondViewController else { return }
        secondVC.delegate = self
        secondVC.smileLabelText = smileLabel.text
    }
    
}

extension FirstViewController: SecondViewControllerDelegate {
    
    func tranferSmile(labelSmile: String) {
        smileLabel.text = labelSmile
    }
}

