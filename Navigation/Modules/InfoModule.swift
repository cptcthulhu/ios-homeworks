//
//  InfoModule.swift
//  Navigation
//
//  Created by Dmitry Testov on 21.09.2022.
//

import Foundation
import UIKit

class InfoViewController: UIViewController {
    
    let alertController = UIAlertController(title: "Hi!", message: "Have a nice day!", preferredStyle: .alert)
    
    func setupAlertConfiguration() {
        alertController.addAction(UIAlertAction(title: "Cancel", style: .default, handler: { _ in
            print("alert") }))
        alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: { _ in
            print("alert") }))
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemYellow
        self.view.addSubview(self.button)
        self.button.center = self.view.center
        setupAlertConfiguration()
    }
    
    
    private lazy var button: UIButton = {
        let button = UIButton(frame: CGRect(x: 100, y: 100, width: 200, height: 50))
        button.backgroundColor  = .systemGray
        button.layer.cornerRadius = 14
        button.layer.borderWidth = 2
        button.setTitle("Just Click It", for: .normal)
        button.addTarget(self, action: #selector(self.addTarget), for: .touchUpInside)
        return button
    }()
    
    @objc func addTarget() {
        self.present(alertController, animated: true, completion: nil)
    }
    
}
