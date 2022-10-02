//
//  FeedModule.swift
//  Navigation
//
//  Created by Dmitry Testov on 21.09.2022.
//

import Foundation
import UIKit

struct Post {
    
    var title: String
    
}

var postTitle = Post(title: "Your New Post")

class FeedViewController: UIViewController {
    
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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBlue
        view.addSubview(stackView)
        stackView.addArrangedSubview(upperButton)
        stackView.addArrangedSubview(bottomButton)
        addingConstraints()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.prefersLargeTitles = true
        
    }
    
    func navBarCustomization () {
        let appearance = UINavigationBarAppearance()
        appearance.backgroundColor = .systemBackground
        appearance.titleTextAttributes = [.foregroundColor: UIColor.brown]
        appearance.largeTitleTextAttributes = [.foregroundColor: UIColor.brown]
        navigationController?.navigationBar.tintColor = .brown
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
