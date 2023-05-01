//
//  ThirdViewController.swift
//  test1
//
//  Created by Chinara on 5/1/23.
//

import UIKit

class ThirdViewController: UIViewController {
        
    private let label1 = UILabel()
    private let label2 = UILabel()
    private let label3 = UILabel()
    private let label4 = UILabel()
    
    private let textField1 = UITextField()
    
    private let button = UIButton(type: .system)
    private let iv4 = UIImageView()

    var email: String?
        
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        
        label1.text = "Forgot Password"
        label1.textColor = .white
        label1.font = .boldSystemFont(ofSize: 24)
        label1.translatesAutoresizingMaskIntoConstraints
        = false
        view.addSubview(label1)
        
        label2.text = "Enter your email"
        label2.textColor = .white
        label2.font = .systemFont(ofSize: 18)
        label2.translatesAutoresizingMaskIntoConstraints
        = false
        view.addSubview(label2)
        
        label3.text = "Choose Another Method"
        label3.font = .systemFont(ofSize: 16)
        label3.textColor = .white
        label3.translatesAutoresizingMaskIntoConstraints
        = false
        view.addSubview(label3)
        
        label4.text = "Need help?"
        label4.font = .boldSystemFont(ofSize: 16)
        label4.textColor = .white
        label4.translatesAutoresizingMaskIntoConstraints
        = false
        view.addSubview(label4)
        
        textField1.borderStyle = .roundedRect
        textField1.translatesAutoresizingMaskIntoConstraints = false
        textField1.placeholder = "Email"
        let _: [NSAttributedString.Key: Any] = [.foregroundColor:UIColor.darkGray]
        view.addSubview(textField1)
        textField1.text = email
        button.setTitle("Send OTP", for:.normal )
        button.titleLabel?.textColor = .white
        button.titleLabel?.font = .boldSystemFont(ofSize: 20)
        button.backgroundColor = .blue
        button.layer.cornerRadius = 10
        button.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(button)
        
        iv4.image = UIImage(named: "Rectangle 98")
        iv4.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(iv4)
        
        
        NSLayoutConstraint.activate([
            label1.topAnchor.constraint(equalTo: view.topAnchor,constant: 231),
            label1.leadingAnchor.constraint(equalTo:view.leadingAnchor, constant: 88),
            
            label2.topAnchor.constraint(equalTo: view.topAnchor,constant: 328),
            label2.leadingAnchor.constraint(equalTo:view.leadingAnchor, constant: 31),
            
            textField1.topAnchor.constraint(equalTo: view.topAnchor,constant: 359),
            textField1.leadingAnchor.constraint(equalTo:view.leadingAnchor, constant: 30),
            textField1.widthAnchor.constraint(equalToConstant: 315),
            textField1.heightAnchor.constraint(equalToConstant: 48),
            
            label3.topAnchor.constraint(equalTo: view.topAnchor,constant: 418),
            label3.leadingAnchor.constraint(equalTo:view.safeAreaLayoutGuide.leadingAnchor, constant: 31),
            
            label4.topAnchor.constraint(equalTo:textField1.bottomAnchor, constant: 11),
            label4.leadingAnchor.constraint(equalTo:view.safeAreaLayoutGuide.leadingAnchor, constant:245),
        
            button.topAnchor.constraint(equalTo: view.topAnchor,constant: 464),
            button.leadingAnchor.constraint(equalTo:view.safeAreaLayoutGuide.leadingAnchor, constant: 40),
            button.widthAnchor.constraint(equalToConstant: 280),
            button.heightAnchor.constraint(equalToConstant: 48),
            
            iv4.topAnchor.constraint(equalTo: view.topAnchor,constant: 0),
            iv4.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 0),
            iv4.trailingAnchor.constraint(equalTo:view.trailingAnchor, constant: 0),
        ])
    }
}
