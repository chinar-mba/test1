//
//  SecondViewController.swift
//  test1
//
//  Created by Chinara on 5/1/23.
//

import UIKit

class SecondViewController: UIViewController {
    private let label1 = UILabel()
    private let label2 = UILabel()
    private let label3 = UILabel()
    private let label4 = UILabel()
    private let label5 = UILabel()
    private let label6 = UILabel()
    private let textField1 = UITextField()
    private let textField2 = UITextField()
    private let textField3 = UITextField()
    private let textField4 = UITextField()
    private let button = UIButton(type: .system)
    private let iv4 = UIImageView()
    private let eyeButton = UIButton(type: .system)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        
        label1.text = "Register"
        label1.textColor = .white
        label1.font = .boldSystemFont(ofSize: 28)
        label1.translatesAutoresizingMaskIntoConstraints
        = false
        view.addSubview(label1)
        
        label2.text = "Create a new account"
        label2.textColor = .white
        label2.font = .systemFont(ofSize: 20)
        label2.translatesAutoresizingMaskIntoConstraints
        = false
        view.addSubview(label2)
        
        label3.text = "Username"
        label3.font = .systemFont(ofSize: 18)
        label3.textColor = .white
        label3.translatesAutoresizingMaskIntoConstraints
        = false
        view.addSubview(label3)
        
        label4.text = "Email"
        label4.font = .systemFont(ofSize: 18)
        label4.textColor = .white
        label4.translatesAutoresizingMaskIntoConstraints
        = false
        view.addSubview(label4)
        
        label5.text = "Mobile number"
        label5.font = .systemFont(ofSize: 18)
        label5.textColor = .white
        label5.translatesAutoresizingMaskIntoConstraints
        = false
        view.addSubview(label5)
        
        label6.text = "Password"
        label6.textColor = .white
        label6.font = .systemFont(ofSize: 18)
        label6.translatesAutoresizingMaskIntoConstraints
        = false
        view.addSubview(label6)
        
        textField1.borderStyle = .roundedRect
        textField1.translatesAutoresizingMaskIntoConstraints = false
        textField1.placeholder = "Username"
        let _: [NSAttributedString.Key: Any] = [.foregroundColor: UIColor.darkGray]
        view.addSubview(textField1)
        
        textField2.borderStyle = .roundedRect
        textField2.translatesAutoresizingMaskIntoConstraints = false
        textField2.placeholder = "Email"
        let _: [NSAttributedString.Key: Any] = [.foregroundColor: UIColor.darkGray]
        view.addSubview(textField2)
        
        textField3.borderStyle = .roundedRect
        textField3.translatesAutoresizingMaskIntoConstraints = false
        textField3.placeholder = "Mobile number"
        let _: [NSAttributedString.Key: Any] = [.foregroundColor: UIColor.darkGray]
        view.addSubview(textField3)
        
        textField4.borderStyle = .roundedRect
        textField4.translatesAutoresizingMaskIntoConstraints = false
        textField4.placeholder = "Password"
        let _: [NSAttributedString.Key: Any] = [.foregroundColor: UIColor.darkGray]
        view.addSubview(textField4)
        
        button.setTitle("Login", for:.normal )
        button.titleLabel?.textColor = .white
        button.titleLabel?.font = .boldSystemFont(ofSize: 20)
        button.backgroundColor = .blue
        button.layer.cornerRadius = 10
        button.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(button)
        
        let image = UIImage(systemName: "eye.slash")
        eyeButton.setImage(image, for: .normal)
        eyeButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(eyeButton)
        
        iv4.image = UIImage(named: "Rectangle 98")
        iv4.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(iv4)
        
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        NSLayoutConstraint.activate([
            label1.topAnchor.constraint(equalTo: view.topAnchor, constant: 200),
            label1.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 130),
            
            label2.topAnchor.constraint(equalTo: view.topAnchor, constant: 236),
            label2.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 76),
            
            label3.topAnchor.constraint(equalTo: view.topAnchor, constant: 284),
            label3.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 30),
            
            textField1.topAnchor.constraint(equalTo: view.topAnchor, constant: 317),
            textField1.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            textField1.widthAnchor.constraint(equalToConstant: 315),
            textField1.heightAnchor.constraint(equalToConstant: 48),
            
            label4.topAnchor.constraint(equalTo: textField1.bottomAnchor, constant: 6),
            label4.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 31),
            
            textField2.topAnchor.constraint(equalTo: label4.bottomAnchor, constant: 4),
            textField2.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 30),
            textField2.widthAnchor.constraint(equalToConstant: 315),
            textField2.heightAnchor.constraint(equalToConstant: 48),
            
            label5.topAnchor.constraint(equalTo: textField2.bottomAnchor, constant: 6),
            label5.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 31),
            
            textField3.topAnchor.constraint(equalTo: view.topAnchor, constant: 487),
            textField3.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 30),
            textField3.widthAnchor.constraint(equalToConstant: 315),
            textField3.heightAnchor.constraint(equalToConstant: 48),
            
            label6.topAnchor.constraint(equalTo: view.topAnchor, constant: 541),
            label6.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 31),
            
            textField4.topAnchor.constraint(equalTo: view.topAnchor, constant: 572),
            textField4.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 30),
            textField4.widthAnchor.constraint(equalToConstant: 315),
            textField4.heightAnchor.constraint(equalToConstant: 48),
            
            button.topAnchor.constraint(equalTo: view.topAnchor, constant: 646),
            button.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 40),
            button.widthAnchor.constraint(equalToConstant: 295),
            button.heightAnchor.constraint(equalToConstant: 48),
            
            iv4.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            iv4.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            iv4.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            
            
            eyeButton.trailingAnchor.constraint(equalTo: textField4.trailingAnchor, constant: -12),
            eyeButton.topAnchor.constraint(equalTo: textField4.topAnchor, constant: 12)
            
        ])
    }
    
    @objc func buttonTapped(sender: UIButton) {
        let username = textField1.text
        let email = textField2.text
        let mobileNum = textField3.text
        let password = textField4.text
        if username == "" && email == "" && mobileNum == "" && password == "" {
            textField1.layer.borderColor = UIColor.red.cgColor
            textField1.layer.borderWidth = 2
            textField1.placeholder = "Заполните пожалуйста"
            textField2.layer.borderColor = UIColor.red.cgColor
            textField2.layer.borderWidth = 2
            textField2.placeholder = "Заполните пожалуйста"
            textField3.layer.borderColor = UIColor.red.cgColor
            textField3.layer.borderWidth = 2
            textField3.placeholder = "Заполните пожалуйста"
            textField4.layer.borderColor = UIColor.red.cgColor
            textField4.layer.borderWidth = 2
            textField4.placeholder = "Заполните пожалуйста"
        } else {
            let vc = ThirdViewController()
            vc.email = email
            navigationController?.pushViewController(vc, animated: true)
        }
    }
    
}
