//
//  ViewController.swift
//  WeatherApp
//
//  Created by Oleg Popov on 08.01.2023.
//

import UIKit

class WellcomeViewController: UIViewController {
    
    private lazy var mainImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "Frame")
        image.toAutoLayout()
        
        return image
    }()
    
    private lazy var titleLable: UILabel = {
        let label = UILabel()
        label.font = Resourses.Fonts.welcomeBigFont
        label.textColor = .white
        label.text = Resourses.Texts.welcomeTitleText
        label.textAlignment = .center
        label.numberOfLines = 0
        label.toAutoLayout()
        
        return label
    }()
    
    private lazy var textLable: UILabel = {
        let label = UILabel()
        label.font = Resourses.Fonts.welcomeSmallFont
        label.textColor = .white
        label.text = Resourses.Texts.welcomeText
        label.textAlignment = .center
        label.numberOfLines = 0
        label.toAutoLayout()
        
        return label
    }()
    
    private lazy var secondTextLable: UILabel = {
        let label = UILabel()
        label.font = Resourses.Fonts.welcomeSmallFont
        label.textColor = .white
        label.text = Resourses.Texts.welcomeSecondText
        label.textAlignment = .center
        label.numberOfLines = 0
        label.toAutoLayout()
        
        return label
    }()
    
    private lazy var firstButton: UIButton = {
       let button = UIButton()
        button.setTitle(Resourses.Texts.firstButtonText, for: .normal)
        button.backgroundColor = Resourses.Colors.colorButton
        button.titleLabel?.font = Resourses.Fonts.firstButoonFont
        button.tintColor = .white
        button.layer.cornerRadius = 10
        button.addTarget(self, action: #selector(yesTupped), for: .touchUpInside)
        button.toAutoLayout()
        
        return button
    }()
    
    private lazy var secondButton: UIButton = {
        let button = UIButton()
        button.setTitle(Resourses.Texts.secondButtonText, for: .normal)
        button.backgroundColor = .clear
        button.titleLabel?.font = Resourses.Fonts.secondButtonFont
        button.tintColor = .white
        button.addTarget(self, action: #selector(noTupped), for: .touchUpInside)
        button.toAutoLayout()
        
        return button
    }()

    override func viewDidLoad() {
        view.backgroundColor = Resourses.Colors.blueBackground
        setupUI()
    }

    func setupUI() {
        
        view.addSubview(mainImage)
        view.addSubview(titleLable)
        view.addSubview(textLable)
        view.addSubview(secondTextLable)
        view.addSubview(firstButton)
        view.addSubview(secondButton)
        
        NSLayoutConstraint.activate([
        
            mainImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 148),
            mainImage.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 105),
            mainImage.widthAnchor.constraint(equalToConstant: 196),
            mainImage.heightAnchor.constraint(equalToConstant: 180),
            
            titleLable.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 27),
            titleLable.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -26),
            titleLable.topAnchor.constraint(equalTo: view.topAnchor, constant: 400),
            
            textLable.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 31),
            textLable.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -30),
            textLable.topAnchor.constraint(equalTo:titleLable.bottomAnchor, constant: 56),
            
            secondTextLable.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 31),
            secondTextLable.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -30),
            secondTextLable.topAnchor.constraint(equalTo: textLable.bottomAnchor, constant: 14),
            
            firstButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 27),
            firstButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -26),
            firstButton.topAnchor.constraint(equalTo: secondTextLable.bottomAnchor, constant: 57),
            firstButton.heightAnchor.constraint(equalToConstant: 40),
            
            secondButton.topAnchor.constraint(equalTo: firstButton.bottomAnchor, constant: 25),
            secondButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 66),
            secondButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -17),
            secondButton.heightAnchor.constraint(equalToConstant: 21),
            
            
            
        
        ])
    }
    
    @objc func yesTupped() {
        firstButton.backgroundColor = Resourses.Colors.pushedButton
    }
    
    @objc func noTupped() {
        
    }

}

