//
//  CustomButton.swift
//  Navigation
//
//  Created by Dmitry Testov on 27.02.2023.
//

import UIKit

class CustomButton: UIButton {

    var target: ()->Void = { }

    init(backgroundColor: UIColor = UIColor(named: "VKColor")!, title: String) {
        super.init(frame: .zero)
        translatesAutoresizingMaskIntoConstraints = false
        layer.cornerRadius = 10
        self.setTitle(title, for: .normal)
        self.backgroundColor = backgroundColor
        addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    @objc func didTapButton(){target()}
}
