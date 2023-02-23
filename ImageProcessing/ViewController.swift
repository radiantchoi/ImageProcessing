//
//  ViewController.swift
//  ImageProcessing
//
//  Created by Gordon Choi on 2023/02/23.
//

import UIKit

import RxSwift
import SnapKit

final class ViewController: UIViewController {
    private lazy var contentsStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.alignment = .center
        stackView.axis = .vertical
        stackView.distribution = .equalSpacing
        stackView.spacing = 32
        return stackView
    }()
    
    private lazy var mainImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(systemName: "photo.artframe")
        return imageView
    }()
    
    private lazy var buttonsStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.alignment = .center
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.spacing = 8
        return stackView
    }()
    
    private lazy var blueButton: UIButton = {
        let button = UIButton(type: .roundedRect)
        button.backgroundColor = .systemBlue
        button.setTitle("A", for: .normal)
        button.setTitleColor(.white, for: .normal)
        return button
    }()
    
    private lazy var redButton: UIButton = {
        let button = UIButton(type: .roundedRect)
        button.backgroundColor = .systemRed
        button.setTitle("B", for: .normal)
        button.setTitleColor(.white, for: .normal)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
    }

    private func setupViews() {
        view.addSubview(contentsStackView)
        
        contentsStackView.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.centerY.equalToSuperview()
        }
        
        setupContentsStackView()
    }
    
    private func setupContentsStackView() {
        contentsStackView.addArrangedSubview(mainImageView)
        contentsStackView.addArrangedSubview(buttonsStackView)
        
        mainImageView.snp.makeConstraints {
            $0.width.equalTo(200)
            $0.height.equalTo(200)
        }
        
        buttonsStackView.snp.makeConstraints {
            $0.width.equalTo(buttonsStackView)
        }
        
        setupButtonsStackView()
    }
    
    private func setupButtonsStackView() {
        buttonsStackView.addArrangedSubview(blueButton)
        buttonsStackView.addArrangedSubview(redButton)
    }
}

