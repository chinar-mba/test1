//
//  MainViewController.swift
//  test1
//
//  Created by Chinara on 5/1/23.
//

import UIKit

class MainViewController: UIViewController {
    let label1 = UILabel()
    let label2 = UILabel()
    let label3 = UILabel()
    let label4 = UILabel()
    let label5 = UILabel()
    let label6 = UILabel()
    let label7 = UIButton(type: .system)
    let textField1 = UITextField()
    let textField2 = UITextField()
    let button = UIButton(type: .system)
    let iv1 = UIImageView()
    let iv2 = UIImageView()
    let iv3 = UIImageView()
    let iv4 = UIImageView()
    let eyeButton = UIButton(type: .system)
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.black
        
        label1.text = "Welcome"
        label1.textColor = .white
        label1.font = .boldSystemFont(ofSize: 28)
        label1.translatesAutoresizingMaskIntoConstraints
        = false
        view.addSubview(label1)
        
        label2.text = "Login to your account"
        label2.textColor = .white
        label2.font = .systemFont(ofSize: 20)
        label2.translatesAutoresizingMaskIntoConstraints
        = false
        view.addSubview(label2)
        
        label3.text = "Email"
        label3.font = .systemFont(ofSize: 18)
        label3.textColor = .white
        label3.translatesAutoresizingMaskIntoConstraints
        = false
        view.addSubview(label3)
        
        label4.text = "Password"
        label4.font = .systemFont(ofSize: 18)
        label4.textColor = .white
        label4.translatesAutoresizingMaskIntoConstraints
        = false
        view.addSubview(label4)
        
        label5.text = "Forgot password"
        label5.font = .boldSystemFont(ofSize: 18)
        label5.textColor = .red
        label5.translatesAutoresizingMaskIntoConstraints
        = false
        view.addSubview(label5)
        
        label6.text = "Don't have account"
        label6.textColor = .darkGray
        label6.font = .systemFont(ofSize: 16)
        label6.translatesAutoresizingMaskIntoConstraints
        = false
        view.addSubview(label6)
        
        label7.setTitle("Create now", for: .normal)
        label7.titleLabel?.textColor = .white
        label7.titleLabel?.font = .boldSystemFont(ofSize: 16)
        label7.translatesAutoresizingMaskIntoConstraints
        = false
        view.addSubview(label7)
        
        textField1.borderStyle = .roundedRect
        textField1.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(textField1)
        
        textField2.borderStyle = .roundedRect
        textField2.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(textField2)
        textField2.isSecureTextEntry = true
        
        button.setTitle("Login", for:.normal )
        button.titleLabel?.textColor = .white
        button.titleLabel?.font = .boldSystemFont(ofSize: 20)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .blue
        button.layer.cornerRadius = 10
        view.addSubview(button)
        
        let image = UIImage(systemName: "eye.slash.fill")
        eyeButton.setImage(image, for: .normal)
        eyeButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(eyeButton)
        
        iv1.image = UIImage(named: "GOOGLE")
        iv1.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(iv1)
        
        iv2.image = UIImage(named: "facebook")
        iv2.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(iv2)
        
        iv3.image = UIImage(named: "instagram")
        iv3.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(iv3)
        
        iv4.image = UIImage(named: "Rectangle 98")
        iv4.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(iv4)
        
        
        NSLayoutConstraint.activate([
            label1.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 251),
            label1.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            
            label2.topAnchor.constraint(equalTo: label1.bottomAnchor, constant: 2),
            label2.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            
            
            label3.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 342),
            label3.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 30),
            
            textField1.topAnchor.constraint(equalTo: label3.bottomAnchor, constant: 6),
            textField1.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 30),
            textField1.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -30),
            textField1.widthAnchor.constraint(equalToConstant: 315),
            textField1.heightAnchor.constraint(equalToConstant: 48),
            
            label4.topAnchor.constraint(equalTo: textField1.bottomAnchor, constant: 6),
            label4.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 31),
            
            textField2.topAnchor.constraint(equalTo: label4.bottomAnchor, constant: 4),
            textField2.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 30),
            textField2.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -30),
            textField2.widthAnchor.constraint(equalToConstant: 315),
            textField2.heightAnchor.constraint(equalToConstant: 48),
            
            
            label5.topAnchor.constraint(equalTo: textField2.bottomAnchor, constant: 7),
            label5.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 184),
            
            button.topAnchor.constraint(equalTo: label5.bottomAnchor, constant: 25),
            button.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 40),
            button.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -40),
            button.widthAnchor.constraint(equalToConstant: 295),
            button.heightAnchor.constraint(equalToConstant: 48),
            
            label6.bottomAnchor.constraint(equalTo: button.bottomAnchor, constant: 24),
            label6.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 49.32),
            
            label7.bottomAnchor.constraint(equalTo: button.bottomAnchor, constant: 30),
            label7.leadingAnchor.constraint(equalTo: label6.trailingAnchor, constant: 3.16),
            
            iv1.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 702),
            iv1.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 98),
            
            iv2.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 702),
            iv2.leadingAnchor.constraint(equalTo: iv1.trailingAnchor, constant: 42.45),
            
            iv3.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 702),
            iv3.leadingAnchor.constraint(equalTo: iv2.trailingAnchor, constant: 42),
            
            iv4.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            iv4.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            iv4.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            iv4.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -612),
            
            eyeButton.trailingAnchor.constraint(equalTo: textField2.trailingAnchor, constant: -12),
            eyeButton.topAnchor.constraint(equalTo: textField2.topAnchor, constant: 12)
        ])
        
        initAction()
        
    }
    private func initAction() {
        label7.addTarget(self, action: #selector(createTapped), for: .touchUpInside)
        eyeButton.addTarget(self, action: #selector(eyePressed), for: .touchUpInside)
        button.addTarget(self, action: #selector(loginTapped), for: .touchUpInside)
    }
    
    @objc func eyePressed(sender: UIButton) {
        let eye = UIImage(systemName: "eye.slash.fill")
        let eyeFill = UIImage(systemName: "eye.fill")
        
        if sender.imageView?.image == eye {
            sender.setImage(eyeFill, for: .normal)
            textField2.isSecureTextEntry = false
        } else {
            sender.setImage(eye, for: .normal)
            textField2.isSecureTextEntry = true
        }
    }
    
    @objc func loginTapped(sender: UIButton) {
    let login = textField1.text
    let password = textField2.text
    if login == "" && password == "" {
            textField1.layer.borderColor = UIColor.red.cgColor
            textField1.layer.borderWidth = 2
            textField1.placeholder = "Заполните пожалуйста"
            textField2.layer.borderColor = UIColor.red.cgColor
            textField2.layer.borderWidth = 2
            textField2.placeholder = "Заполните пожалуйста"
        
        } else {
            textField1.layer.borderColor = UIColor.black.cgColor
            textField1.layer.borderWidth = 2
            textField1.placeholder = "Email"
            textField2.layer.borderColor = UIColor.black.cgColor
            textField2.layer.borderWidth = 2
            textField2.placeholder = "Password"
        }
    }
    
    @objc func createTapped(sender: UIButton) {
        let secondViewController = SecondViewController()
        navigationController?.pushViewController(secondViewController, animated: true)
    }
    
}
