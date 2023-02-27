//
//  PhotoCollectionViewCell.swift
//  Navigation
//
//  Created by Dmitry Testov on 23.02.2023.
//

import UIKit

class PhotoCollectionViewCell: UICollectionViewCell {

    private lazy var photo: UIImageView = {
        let photo = UIImageView()
        photo.image = UIImage(named: "IMG-8")
        photo.layer.masksToBounds = true
        photo.layer.cornerRadius = 6
        photo.translatesAutoresizingMaskIntoConstraints = false
        //photo.contentMode = .scaleAspectFill
        return photo
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(photo)
        NSLayoutConstraint.activate([

            photo.topAnchor.constraint(equalTo: self.topAnchor),
            photo.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            photo.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            photo.bottomAnchor.constraint(equalTo: self.bottomAnchor)

        ])
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func setupImage (image: String) {
        self.photo.image = UIImage(named: image)
    }


}
