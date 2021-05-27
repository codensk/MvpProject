//
//  ViewController.swift
//  MvpProject
//
//  Created by SERGEY VOROBEV on 27.05.2021.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Properties
    lazy var presenter = Presenter(with: self)
    
    // MARK: - Outlets
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    // MARK - IBActions
    @IBAction func tapButton() {
        presenter.buttonTapped()
    }

}

// MARK: - Extensions
extension ViewController: PresenterView {
    func updateLabel() {
        label.text = "Button clicked 5 times"
        
        view.backgroundColor = .yellow
    }
}
