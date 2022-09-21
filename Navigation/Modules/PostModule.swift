//
//  PostModule.swift
//  Navigation
//
//  Created by Dmitry Testov on 21.09.2022.
//

import Foundation
import UIKit

class PostViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Add", style: .plain, target: self, action: #selector(self.didTapButton))
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.navigationItem.title = postTitle.title
    }


        @objc private func didTapButton() {
            let vc = InfoViewController()
            self.present(vc, animated: true)
        }

}
