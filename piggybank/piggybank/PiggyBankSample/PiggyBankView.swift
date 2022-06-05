//
//  PiggyBankView.swift
//  piggybank
//
//  Created by caiomadeira on 05/06/22.
//

import UIKit

protocol PiggyBankViewDelegate: AnyObject {
    func didTouchPrimaryButton()
    func didTouchSecondaryButton()
    func didTouchTertiaryButton()
    func didTouchQuartenaryButton()
    func didTouchQuinaryButton()
}

class PiggyBankView: UIView {

    lazy var mainStackView: UIStackView = {
        let stackView: UIStackView = UIStackView(arrangedSubviews: [primaryButton, secondaryButton, tertiaryButton, quartenaryButton, quinaryButton, emptyView])
        stackView.axis = .vertical
        stackView.spacing = 5.0
        stackView.distribution = .fill
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    lazy var primaryButton: UIButton = {
        let button: UIButton = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.isHidden = false
        return button
    }()
    
    lazy var secondaryButton: UIButton = {
        let button: UIButton = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.isHidden = false
        return button
    }()
    
    lazy var tertiaryButton: UIButton = {
        let button: UIButton = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.isHidden = false
        return button
    }()
    
    lazy var quartenaryButton: UIButton = {
        let button: UIButton = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.isHidden = false
        return button
    }()
    
    lazy var quinaryButton: UIButton = {
        let button: UIButton = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.isHidden = false
        return button
    }()
    
    lazy var emptyView: UIImageView = {
        let view: UIImageView = UIImageView()
        view.image = UIImage(imageLiteralResourceName: "testAppMainIcon")
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    init() {
        super.init(frame: .zero)
        self.setupView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.setupView()
    }

}

// MARK: View life cycle
extension PiggyBankView: PiggyBankViewCode {
    func setupHierarchy() {
        let navBar = setupNavigationBar(title: LocalizableStrings.piggyBankButtonPrimary.rawValue,
                                        selector: Selector("action"),
                                        height: 100,
                                        foreground: .black,
                                        font: LocalizableStrings.piggybankFontHelvetica.rawValue,
                                        fontSize: 20,
                                        barColor: .white,
                                        style: .default)
        addSubview(navBar)
        addSubview(mainStackView)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            mainStackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            mainStackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            mainStackView.topAnchor.constraint(equalTo: topAnchor, constant: 120),
            mainStackView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -60),
            
            primaryButton.heightAnchor.constraint(equalToConstant: 70),
            secondaryButton.heightAnchor.constraint(equalToConstant: 70),
            tertiaryButton.heightAnchor.constraint(equalToConstant: 70),
            quartenaryButton.heightAnchor.constraint(equalToConstant: 70),
            quinaryButton.heightAnchor.constraint(equalToConstant: 70),
            emptyView.heightAnchor.constraint(equalToConstant: 70)
        ])
    }
    
    func setupAccessibility() {
        //
    }
    
    func setupCustomization() {
        backgroundColor = .white
        mainStackView.backgroundColor = .white
        mainStackView.layer.shadowColor = UIColor.black.cgColor
        mainStackView.layer.shadowOpacity = 1
        mainStackView.layer.shadowOffset = .zero
        mainStackView.layer.shadowRadius = 4.0
        mainStackView.layer.cornerRadius = 5.0
        
        primaryButton.setTitle(LocalizableStrings.piggyBankButtonPrimary.rawValue, for: .normal)
        primaryButton.setTitleColor(UIColor.black, for: .normal)
        primaryButton.titleLabel?.font = UIFont(name: LocalizableStrings.piggybankFontHelvetica.rawValue, size: 20)
        
        secondaryButton.setTitle(LocalizableStrings.piggyBankButtonSecondary.rawValue, for: .normal)
        secondaryButton.setTitleColor(UIColor.black, for: .normal)
        
        tertiaryButton.setTitle(LocalizableStrings.piggyBankButtonTertiary.rawValue, for: .normal)
        tertiaryButton.setTitleColor(UIColor.black, for: .normal)
        
        quartenaryButton.setTitle(LocalizableStrings.piggyBankButtonQuartenary.rawValue, for: .normal)
        quartenaryButton.setTitleColor(UIColor.black, for: .normal)
        
        quinaryButton.setTitle(LocalizableStrings.piggyBankButtonFinish.rawValue, for: .normal)
        quinaryButton.setTitleColor(UIColor.black, for: .normal)
    }
}

// MARK: - Navigation Bar
extension PiggyBankView {
    
    func setupNavigationBar(title: String?,
                            selector: Selector? = nil,
                            height: Int,
                            foreground: UIColor,
                            font: String,
                            fontSize: CGFloat,
                            barColor: UIColor,
                            style: UIBarStyle) -> UINavigationBar
    {
        let navBar = UINavigationBar(frame: CGRect(x: 0, y: 0, width: Int(frame.size.width), height: height))
        let navItems = setupNavigationItems(title: title ?? "")
        setupNavigationButton(title: title ?? "", selector: selector)
        navBar.setItems([navItems], animated: false)
        navBar.isTranslucent = false
        navBar.titleTextAttributes = [.foregroundColor: foreground]
        if let fontV = UIFont(name: font, size: fontSize) {
            navBar.titleTextAttributes = [NSAttributedString.Key.font: fontV]
        }
        navBar.barTintColor = barColor
        navBar.barStyle = style
        return navBar
    }
    
    func setupNavigationItems(title: String? = "") -> UINavigationItem {
        if let navTitle = title {
            let navItem = UINavigationItem(title: navTitle)
            return navItem
        } else {
            debugPrint("x")
            return UINavigationItem()
        }
    }
    
    func setupNavigationButton(title: String, selector: Selector? = nil) {
        let navItem = setupNavigationItems(title: title)
        let btnItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: selector)
        navItem.rightBarButtonItem = btnItem
    }
    
}

extension PiggyBankView: PiggyBankViewDelegate {
    func didTouchPrimaryButton() {
        //
    }
    
    func didTouchSecondaryButton() {
        //
    }
    
    func didTouchTertiaryButton() {
        //
    }
    
    func didTouchQuartenaryButton() {
        //
    }
    
    func didTouchQuinaryButton() {
        //
    }
}

