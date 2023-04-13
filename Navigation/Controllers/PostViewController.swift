//
//  PostViewController.swift
//  Navigation
//
//  Created by Dmitry Testov on 31.12.2022.
//

import UIKit
import StorageService

class PostViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBlue
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Add", style: .plain, target: self, action: #selector(self.didTapButton))
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.navigationItem.title = "BlaBla"

    }

    
    @objc private func didTapButton() {
        let vc = InfoViewController()
        self.present(vc, animated: true)
    }
    
}
