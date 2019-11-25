//
//  RegisterViewController.swift
//  Day14_UI_exercises
//
//  Created by Hoang Tung on 11/25/19.
//  Copyright © 2019 Hoang Tung. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {
    @IBOutlet weak var orangeView: UIView!
    @IBOutlet weak var fullnameView: UIView!
    @IBOutlet weak var emailView: UIView!
    @IBOutlet weak var phoneView: UIView!
    @IBOutlet weak var passwordView: UIView!
    @IBOutlet weak var registerButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        fullnameView.layer.cornerRadius = fullnameView.bounds.height / 2
        emailView.layer.cornerRadius = emailView.bounds.height / 2
        phoneView.layer.cornerRadius = phoneView.bounds.height / 2
        passwordView.layer.cornerRadius = passwordView.bounds.height / 2
        registerButton.layer.cornerRadius = registerButton.bounds.height / 2
        
        let path = UIBezierPath(arcCenter: CGPoint(x: orangeView.bounds.maxX / 4, y: orangeView.bounds.maxY - orangeView.bounds.maxX / 4), radius: orangeView.bounds.maxX / 4, startAngle: .pi / 2, endAngle: .pi, clockwise: true)
        path.addLine(to: CGPoint(x: 0, y: orangeView.bounds.maxY))
        let shape = CAShapeLayer()
        shape.path = path.cgPath
        shape.fillColor = UIColor.tertiarySystemGroupedBackground.cgColor
        orangeView.layer.addSublayer(shape)
        
        fullnameView.layer.shadowOffset = CGSize(width: 0, height: 3)
        fullnameView.layer.shadowColor = UIColor.gray.cgColor
        fullnameView.layer.shadowRadius = 4
        fullnameView.layer.shadowOpacity = 0.4
        
        emailView.layer.shadowOffset = CGSize(width: 0, height: 3)
        emailView.layer.shadowColor = UIColor.gray.cgColor
        emailView.layer.shadowRadius = 4
        emailView.layer.shadowOpacity = 0.4
        
        phoneView.layer.shadowOffset = CGSize(width: 0, height: 3)
        phoneView.layer.shadowColor = UIColor.gray.cgColor
        phoneView.layer.shadowRadius = 4
        phoneView.layer.shadowOpacity = 0.4
        
        passwordView.layer.shadowOffset = CGSize(width: 0, height: 3)
        passwordView.layer.shadowColor = UIColor.gray.cgColor
        passwordView.layer.shadowRadius = 4
        passwordView.layer.shadowOpacity = 0.4
        
        registerButton.layer.shadowOffset = CGSize(width: 0, height: 3)
        registerButton.layer.shadowColor = UIColor.gray.cgColor
        registerButton.layer.shadowRadius = 4
        registerButton.layer.shadowOpacity = 0.4
    }

}
