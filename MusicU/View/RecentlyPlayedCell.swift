//
//  RecentlyPlayedCell.swift
//  MusicU
//
//  Created by mai ng on 5/30/21.
//

import UIKit

class RecentlyPlayedCell: UICollectionViewCell {
    
    static let identifier = "RecentlyIDCell"

    private let thumbnailImageView: UIImageView = {
        var image = UIImageView(image: UIImage(named: "Blue_MusicNote"))
        image.layer.cornerRadius = 15
        image.clipsToBounds = true
        image.contentMode = .scaleToFill

        return image
    }()
//        private let thumbnailImageView = MUThumbnailImageView(frame: .zero)
//
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "MalayalamSangamMN-Bold", size: 16)
        label.textAlignment = .center
        label.textColor = .black
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.85
        label.lineBreakMode = .byTruncatingTail

        return label
    }()
 

    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }


    func configureUI() {
        addSubview(thumbnailImageView)

        thumbnailImageView.translatesAutoresizingMaskIntoConstraints = false
        thumbnailImageView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        thumbnailImageView.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        thumbnailImageView.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        thumbnailImageView.heightAnchor.constraint(equalToConstant: self.frame.width).isActive = true
        


        addSubview(titleLabel)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.topAnchor.constraint(equalTo: thumbnailImageView.bottomAnchor,constant: 4.7 ).isActive = true
        titleLabel.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        titleLabel.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        titleLabel.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        
      

    }

    func setup(song: Song) {
//        guard let song = item as? Song else {return}
        thumbnailImageView.image = UIImage(named: song.thumbnailUrl)
        titleLabel.text = song.title
        
//        switch cellType {
//        case .recentlyPlayed:
//            guard let song = item as? Song else { return }
//            thumbnailImageView.image = UIImage(named: song.thumbnailUrl)
//            titleLabel.text = song.title
//        case .popularArtists:
//            guard let song = item as? Song else { return }
//            thumbnailImageView.image = UIImage(named: song.thumbnailUrl)
//            titleLabel.text = song.title
//        default: break
//        }
    }
}
