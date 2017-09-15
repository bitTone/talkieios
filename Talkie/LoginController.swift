//
//  LoginController.swift
//  Talkie
//
//  Created by tj on 9/14/17.
//  Copyright © 2017 tj. All rights reserved.
//


import UIKit

class LoginController: UIViewController {
    
    
    let inputContainerView : UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.white
        view.translatesAutoresizingMaskIntoConstraints = false
        // rounds out corners
        view.layer.cornerRadius = 6
        view.layer.masksToBounds = true
        //add previous method for cornerradius to take an effect.
        return view
        
    }()
    
    //LoginRegister Button
    let logRegButton: UIButton = {
        
        let button = UIButton(type: .system)
        button.backgroundColor = UIColor(r: 58, g: 21, b: 128)
        button.setTitle("Register", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 6
        button.layer.masksToBounds = true
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 15)
        return button
    }()
    
    
    //Name TextField
    let nameTextField: UITextField = {
        
        let tf = UITextField()
        tf.placeholder = "Name"
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
        
    }()
    
    let nameSeparator: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(r: 220, g: 220, b: 220)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let emailTextField: UITextField = {
        
        let tf = UITextField()
        tf.placeholder = "Email"
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
        
    }()
    
    let emailSeparator: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(r: 220, g: 220, b: 220)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    let PassTextField: UITextField = {
        
        let tf = UITextField()
        tf.placeholder = "Password"
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.isSecureTextEntry = true
        return tf
        
    }()
    
    let welcomelabel: UILabel = {
        let label = UILabel()
        label.text = "Welcome to Talkie"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
        
        
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(r: 24, g: 115, b: 100)
        
        //instantiating the input viewer
        view.addSubview(inputContainerView)
        view.addSubview(logRegButton)
        view.addSubview(welcomelabel)
        
        setupInputContainerView()
        setupLogRegButton()
        setupWelcomeLabelView()
    }
    
 
    
    func setupWelcomeLabelView(){
        
        //Constraints :  need x,y, width and height
        welcomelabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        welcomelabel.bottomAnchor.constraint(equalTo: inputContainerView.topAnchor, constant: -12).isActive = true
        welcomelabel.widthAnchor.constraint(equalToConstant: 150).isActive = true
        welcomelabel.heightAnchor.constraint(equalToConstant: 120).isActive = true
        
        
        
    }
    func setupLogRegButton(){
        
        //Constraints :  need x,y, width and height--Don't forget to set active as true.
        logRegButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        //constant 12 from the bottom achor view.
        logRegButton.topAnchor.constraint(equalTo: inputContainerView.bottomAnchor, constant: 12).isActive = true
        
        //how wide
        logRegButton.widthAnchor.constraint(equalTo: inputContainerView.widthAnchor).isActive = true
        logRegButton.heightAnchor.constraint(equalToConstant: 35).isActive = true
        
    }
    
        /**
        *setupInputContainerView is the container view for the inputs(name,email,password)
 
 
        */
    
    func setupInputContainerView() {
        
        //Constraints :  need x,y, width and height
        //CenterXAnchor centers the x axis
        inputContainerView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        inputContainerView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        //view widthAnchor spans the entire view/ constant-24 give you 12 pixels on the left and 12 on right
        inputContainerView.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -24).isActive = true
        
        inputContainerView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        
        
        
        inputContainerView.addSubview(nameTextField)
        inputContainerView.addSubview(nameSeparator)
        inputContainerView.addSubview(emailTextField)
        inputContainerView.addSubview(emailSeparator)
        inputContainerView.addSubview(PassTextField)
        
        
        //Constraints :  need x,y, width and height
        nameTextField.leftAnchor.constraint(equalTo: inputContainerView.leftAnchor, constant: 12).isActive = true
        nameTextField.topAnchor.constraint(equalTo: inputContainerView.topAnchor).isActive = true
        nameTextField.widthAnchor.constraint(equalTo: inputContainerView.widthAnchor).isActive = true
        nameTextField.heightAnchor.constraint(equalTo: inputContainerView.heightAnchor, multiplier: 1/3).isActive = true
        
        
        //Constraints :  need x,y, width and height
        nameSeparator.leftAnchor.constraint(equalTo: inputContainerView.leftAnchor).isActive = true
        nameSeparator.topAnchor.constraint(equalTo: nameTextField.bottomAnchor).isActive = true
        nameSeparator.widthAnchor.constraint(equalTo: inputContainerView.widthAnchor).isActive = true
        nameSeparator.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        ///////////////////////////////////////////////////////////////////////////////////////////////////////////////
        
        //Constraints :  need x,y, width and height
        emailTextField.leftAnchor.constraint(equalTo: inputContainerView.leftAnchor, constant: 12).isActive = true
        emailTextField.topAnchor.constraint(equalTo: nameTextField.bottomAnchor).isActive = true
        emailTextField.widthAnchor.constraint(equalTo: inputContainerView.widthAnchor).isActive = true
        emailTextField.heightAnchor.constraint(equalTo: inputContainerView.heightAnchor, multiplier: 1/3).isActive = true
        
        //Constraints :  need x,y, width and height
        emailSeparator.leftAnchor.constraint(equalTo: inputContainerView.leftAnchor).isActive = true
        emailSeparator.topAnchor.constraint(equalTo: emailTextField.bottomAnchor).isActive = true
        emailSeparator.widthAnchor.constraint(equalTo: inputContainerView.widthAnchor).isActive = true
        emailSeparator.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        ///////////////////////////////////////////////////////////////////////////////////////////////////////////////
        
        
        //Constraints :  need x,y, width and height
        PassTextField.leftAnchor.constraint(equalTo: inputContainerView.leftAnchor, constant: 12).isActive = true
        PassTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor).isActive = true
        PassTextField.widthAnchor.constraint(equalTo: inputContainerView.widthAnchor).isActive = true
        PassTextField.heightAnchor.constraint(equalTo: inputContainerView.heightAnchor, multiplier: 1/3).isActive = true
        
        
    }
    
    //Carrier information-Time-BatteryPercentage(this method turns them white)
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
}


extension UIColor {
    convenience init(r: CGFloat, g: CGFloat, b: CGFloat) {
        self.init(red: r/255, green: g/255, blue: b/255, alpha: 1)
    }
}
