//
//  FeedViewController.swift
//  Navigation
//
//  Created by Dmitry Testov on 24.12.2022.
//

import Foundation
import UIKit


var postTitle = "Your New Post"

class FeedViewController: UIViewController {

    // MARK: UI Elements Creation
    
   
    private lazy var stackView : UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.spacing = 10
        stack.alignment = .center
        return stack
    }()


    private lazy var upperButton: UIButton = {
        let button = UIButton()
        
        button.backgroundColor  = .systemGray2
        button.setTitle("Create a New Post", for: .normal)
        button.layer.cornerRadius = 14
        button.addTarget(self, action: #selector(self.didTapButton), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    private lazy var bottomButton: UIButton = {
        let button = UIButton()
        button.backgroundColor  = .systemGreen
        button.setTitle("Coming Soon", for: .normal)
        button.layer.cornerRadius = 14
        button.addTarget(self, action: #selector(self.didTapButton), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    // MARK: Life Cycle Functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemCyan
        view.addSubview(stackView)
        stackView.addArrangedSubview(upperButton)
        stackView.addArrangedSubview(bottomButton)
        addingConstraints()

    }

    override func viewWillAppear(_ animated: Bool) {
           super.viewWillAppear(animated)
           self.navigationController?.navigationBar.prefersLargeTitles = true
           navBarCustomization()

       }

    // MARK: Customization and Obj-C Runtime Functions
    
    func navBarCustomization () {
        let appearance = UINavigationBarAppearance()
        appearance.backgroundColor = UIColor(named: "LightGray")
        appearance.titleTextAttributes = [.foregroundColor: UIColor.systemBlue]
        appearance.largeTitleTextAttributes = [.foregroundColor: UIColor.systemBlue]
        navigationController?.navigationBar.tintColor = UIColor(named: "VKColor")
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.compactAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
        self.navigationItem.title = "Your Feed"
    }


    @objc private func didTapButton() {
        let vc = PostViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }



    func addingConstraints () {
        NSLayoutConstraint.activate([

            stackView.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor),

            upperButton.heightAnchor.constraint(equalToConstant: 50),
            upperButton.widthAnchor.constraint(equalToConstant: 200),

            bottomButton.heightAnchor.constraint(equalToConstant: 50),
            bottomButton.widthAnchor.constraint(equalToConstant: 200)

        ])
    }
}
