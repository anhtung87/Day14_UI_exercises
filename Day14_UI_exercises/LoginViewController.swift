//
//  LoginViewController.swift
//  Day14_UI_exercises
//
//  Created by Hoang Tung on 11/25/19.
//  Copyright © 2019 Hoang Tung. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var OrangeView: UIView!
    @IBOutlet weak var emailView: UIView!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordVIew: UIView!
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emailView.layer.cornerRadius = emailView.bounds.height / 2
        emailTextField.layer.borderColor = UIColor.white.cgColor
        passwordVIew.layer.cornerRadius = passwordVIew.bounds.height / 2
        loginButton.layer.cornerRadius = loginButton.bounds.height / 2
        
        let path = UIBezierPath(arcCenter: CGPoint(x: OrangeView.bounds.maxX / 4, y: OrangeView.bounds.maxY - OrangeView.bounds.maxX / 4), radius: OrangeView.bounds.maxX / 4, startAngle: .pi / 2, endAngle: .pi, clockwise: true)
        path.addLine(to: CGPoint(x: 0, y: OrangeView.bounds.maxY))
        let shape = CAShapeLayer()
        shape.path = path.cgPath
        shape.fillColor = UIColor.tertiarySystemGroupedBackground.cgColor
        OrangeView.layer.addSublayer(shape)
        
        emailView.layer.shadowOffset = CGSize(width: 0, height: 3)
        emailView.layer.shadowColor = UIColor.gray.cgColor
        emailView.layer.shadowRadius = 4
        emailView.layer.shadowOpacity = 0.4
        
        passwordVIew.layer.shadowOffset = CGSize(width: 0, height: 3)
        passwordVIew.layer.shadowColor = UIColor.gray.cgColor
        passwordVIew.layer.shadowRadius = 4
        passwordVIew.layer.shadowOpacity = 0.4
        
        loginButton.layer.shadowOffset = CGSize(width: 0, height: 3)
        loginButton.layer.shadowColor = UIColor.gray.cgColor
        loginButton.layer.shadowRadius = 4
        loginButton.layer.shadowOpacity = 0.4
        
        let verticalGradient = CAGradientLayer()
        verticalGradient.frame = OrangeView.bounds
        verticalGradient.colors = [UIColor.orange.cgColor, UIColor.systemOrange.cgColor]
        OrangeView.layer.insertSublayer(verticalGradient, at: 0)
    }
    
}
