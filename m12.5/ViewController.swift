//
//  ViewController.swift
//  m12.5
//
//  Created by Максим Юрьев on 31.01.2024.
//

import UIKit

class ViewController: UIViewController {
    
    private lazy var image1: UIImageView = {
        let imageStar = UIImageView()
        imageStar.image = Constants.Image.image1
        return imageStar
    }()
    
    private lazy var label1: UILabel = {
        let label = UILabel()
        label.text = Constants.Text.lable1
        label.textColor = Constants.Colors.blueColor
        label.font = Constants.Fonts.helvetica
        return label
    }()
    
    private lazy var label2: UILabel = {
        let label = UILabel()
        label.text = Constants.Text.lable2
        label.textColor = Constants.Colors.orangeColor
        label.font = Constants.Fonts.systemHeading
        return label
    }()
    
    private lazy var label3: UILabel = {
        let label = UILabel()
        label.text = Constants.Text.lable3
        label.textColor = Constants.Colors.redColor
        label.font = Constants.Fonts.systemText
        return label
    }()
    
    private lazy var label4: UILabel = {
        let label = UILabel()
        let stringlabel = "hey hey"
        let attrString: NSMutableAttributedString = NSMutableAttributedString(string: stringlabel)
        if let spaceIndex = stringlabel.firstIndex(of: " ") {
            attrString.addAttribute(
                .foregroundColor,
                value: UIColor.systemGray,
                range: NSRange(stringlabel.startIndex ..< spaceIndex, in: stringlabel)
            )
            attrString.addAttribute(
                .foregroundColor,
                value: UIColor.systemMint,
                range: NSRange(spaceIndex ..< stringlabel.endIndex, in: stringlabel)
            )
        }
        label.attributedText = attrString
        return label
    }()
    
    private lazy var stackView: UIStackView = {
       let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.spacing = 16
        stackView.addArrangedSubview(image1)
        stackView.addArrangedSubview(label1)
        stackView.addArrangedSubview(label2)
        stackView.addArrangedSubview(label3)
        stackView.addArrangedSubview(label4)
        return stackView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        setupConstraints()
    }
    
    private func setupViews() {
        view.addSubview(stackView)
    }
    
    private func setupConstraints() {
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    


}

