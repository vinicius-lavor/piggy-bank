//
//  PiggyTableViewCell.swift
//  Piggy Bank
//
//  Created by Vinícius Cavalcante on 14/10/22.
//

import UIKit

class PiggyTableViewCell: UITableViewCell {
    static let identifier = "PiggyTableViewCell"
    
    private let cardView: UIView = {
        let card = UIView()
        card.backgroundColor = .white
        card.layer.cornerRadius = 12
        card.clipsToBounds = true
        card.layer.shadowColor = UIColor.black.cgColor
        card.layer.shadowRadius = 6
        card.layer.shadowOpacity = 0.15
        card.layer.shadowOffset = CGSize(width: 0, height: 0)
        card.layer.masksToBounds = false
        
        return card
    }()
    
    private let piggyTitle: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = .systemFont(ofSize: 24, weight: .bold)
        label.text = "Japão"
        return label
    }()
    
    private let piggyValue: UILabel = {
        
        let piggyValue = UILabel()
        piggyValue.textColor = .black
        piggyValue.font = .systemFont(ofSize: 17, weight: .bold)
        piggyValue.text = "500 de ¥1000"
        return piggyValue
    }()
    
    private let progressBar: UIProgressView = {
        let progress = UIProgressView(progressViewStyle: .bar)
        progress.trackTintColor = .secondarySystemBackground
        progress.progressTintColor = .systemMint
        return progress
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(cardView)
        contentView.addSubview(piggyTitle)
        contentView.addSubview(piggyValue)
        contentView.addSubview(progressBar)
        
        cardView.translatesAutoresizingMaskIntoConstraints = false
        piggyTitle.translatesAutoresizingMaskIntoConstraints = false
        piggyValue.translatesAutoresizingMaskIntoConstraints = false
        progressBar.translatesAutoresizingMaskIntoConstraints = false
//        progressBar.frame = CGRect(width: contentView.frame.size.width - 20, height: 36)
        
        progressBar.setProgress(0.5, animated: false)
        progressBar.layer.cornerRadius = 8
        progressBar.clipsToBounds = true
        progressBar.layer.sublayers![1].cornerRadius = 8
        progressBar.subviews[1].clipsToBounds = true
        
        contentView.backgroundColor = .clear
        
        NSLayoutConstraint.activate([
            cardView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 8),
            cardView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 8),
            cardView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -8),
            cardView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -8)
        ])
        
        NSLayoutConstraint.activate([
            piggyTitle.topAnchor.constraint(equalTo: self.cardView.topAnchor, constant: 4),
            piggyTitle.leadingAnchor.constraint(equalTo: cardView.leadingAnchor, constant: 8),
            piggyTitle.trailingAnchor.constraint(equalTo: cardView.trailingAnchor),
//            piggyTitle.bottomAnchor.constraint(equalTo: progressBar.topAnchor, constant: -16)

        ])
        
        NSLayoutConstraint.activate([
            piggyValue.topAnchor.constraint(equalToSystemSpacingBelow: piggyTitle.bottomAnchor, multiplier: 2),
            piggyValue.leadingAnchor.constraint(equalTo: self.cardView.leadingAnchor, constant: 8),
            piggyValue.trailingAnchor.constraint(equalTo: self.cardView.trailingAnchor),
            piggyValue.bottomAnchor.constraint(equalTo: progressBar.topAnchor)

        ])
        
        NSLayoutConstraint.activate([
            progressBar.heightAnchor.constraint(equalToConstant: 14),
//            progressBar.topAnchor.constraint(equalToSystemSpacingBelow: piggyValue.bottomAnchor, multiplier: 1),
            progressBar.leadingAnchor.constraint(equalTo: self.piggyTitle.leadingAnchor),
            progressBar.trailingAnchor.constraint(equalTo: self.cardView.trailingAnchor, constant: -8),
            progressBar.bottomAnchor.constraint(equalTo: cardView.bottomAnchor, constant: -8)
//            contentView.bottomAnchor.constraint(equalTo: self.progressBar.bottomAnchor, constant: 8)
//            piggyTitle.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
//            piggyTitle.centerYAnchor.constraint(equalTo: contentView.centerYAnchor)
        ])
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
//        piggyTitle.frame = CGRect(x: 10, y: 0, width: contentView.frame.size.width - 10, height: contentView.frame.size.height)
    }
}
