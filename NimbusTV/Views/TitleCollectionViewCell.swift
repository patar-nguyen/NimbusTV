//
//  TitleCollectionViewCell.swift
//  NimbusTV
//
//  Created by Patrick Nguyen on 2023-03-05.
//

import UIKit
import SDWebImage

class TitleCollectionViewCell: UICollectionViewCell {
    static let identifier = "TitleCollectionViewCell"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configurePosterImageView()
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    private let posterImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    func configurePosterImageView() {
        contentView.addSubview(posterImageView)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        posterImageView.frame = contentView.bounds
    }
    
    public func configure(with model: String) {
        guard let url = URL(string: model) else { return }
        posterImageView.sd_setImage(with: url, completed: nil)
    }
}
