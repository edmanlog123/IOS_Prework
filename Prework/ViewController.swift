//
//  ViewController.swift
//  Prework
//
//  Created by Edward Ogbalor on 2025-08-11.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var greetingLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let tap = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        view.addGestureRecognizer(tap)
    }
    @IBAction func didTapUpdateText(_ sender: Any) {
        let name = nameTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) ?? ""
            greetingLabel.text = name.isEmpty ? "Hello!" : "Hello, \(name)!"
            view.endEditing(true) // hide keyboard
    }
    @IBAction func didTapChangeBackground(_ sender: Any) {
        view.backgroundColor = UIColor(
                hue: .random(in: 0...1),
                saturation: .random(in: 0.25...0.6),
                brightness: .random(in: 0.9...1.0),
                alpha: 1
            )
    }
    
    @IBAction func didTapStaticMessage(_ sender: Any) {
        greetingLabel.text = "Nice to meet you! 👋"
           view.endEditing(true) // hide keyboard if open
    }
    @objc private func dismissKeyboard() {
        view.endEditing(true)
    }

    
}

