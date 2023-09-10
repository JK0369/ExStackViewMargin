//
//  ViewController.swift
//  ExStackViewPadding
//
//  Created by 김종권 on 2023/09/10.
//

import UIKit

class ViewController: UIViewController {
    private let stackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.backgroundColor = .lightGray.withAlphaComponent(0.35)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    private let label1 = {
        let label = UILabel()
        label.text = "김종권(jake)"
        label.textColor = .black
        label.font = .systemFont(ofSize: 34, weight: .black)
        label.numberOfLines = 0
        label.backgroundColor = .orange
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    private let label2 = {
        let label = UILabel()
        label.text = "iOS 앱 개발 알아가기"
        label.textColor = .black
        label.font = .systemFont(ofSize: 24, weight: .black)
        label.numberOfLines = 0
        label.backgroundColor = .blue.withAlphaComponent(0.3)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(stackView)
        stackView.addArrangedSubview(label1)
        stackView.addArrangedSubview(label2)
        
        NSLayoutConstraint.activate([
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        ])
        
        stackView.setCustomSpacing(16, after: label1)
        
        setPaddingInStackView()
    }
    
    private func setPaddingInStackView() {
        stackView.isLayoutMarginsRelativeArrangement = true
        
        /// UIEdgeInsets이 아닌 NSDirectionalEdgeInsets값임을 주의
        stackView.directionalLayoutMargins = NSDirectionalEdgeInsets(top: 20, leading: 20, bottom: 20, trailing: 20)
        stackView.layoutMargins = .init(top: 20, left: 20, bottom: 20, right: 20)
        self.view.layoutMargins
        
        /// 한쪽만 적용도 가능
//        stackView.directionalLayoutMargins.leading = 100
    }
}
