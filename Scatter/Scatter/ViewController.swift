//
//  ViewController.swift
//  Scatter
//
//  Created by John Kouris on 9/20/19.
//  Copyright © 2019 John Kouris. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let letter1 = UILabel()
    let letter2 = UILabel()
    let letter3 = UILabel()
    let letter4 = UILabel()
    let letter5 = UILabel()
    let letter6 = UILabel()
    let image = UIImageView()
    
    var isScattered = false

    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureLabelsAndImage()
    }
    
    @IBAction func toggleButtonPressed(_ sender: UIBarButtonItem) {
        runAnimation()
    }
    
    private func configureLabelsAndImage() {
        
        letter1.translatesAutoresizingMaskIntoConstraints = false
        letter1.text = "L"
        letter1.font = UIFont.systemFont(ofSize: 40)
        
        letter2.translatesAutoresizingMaskIntoConstraints = false
        letter2.text = "a"
        letter2.font = UIFont.systemFont(ofSize: 40)
        
        letter3.translatesAutoresizingMaskIntoConstraints = false
        letter3.text = "m"
        letter3.font = UIFont.systemFont(ofSize: 40)
        
        letter4.translatesAutoresizingMaskIntoConstraints = false
        letter4.text = "b"
        letter4.font = UIFont.systemFont(ofSize: 40)
        
        letter5.translatesAutoresizingMaskIntoConstraints = false
        letter5.text = "d"
        letter5.font = UIFont.systemFont(ofSize: 40)
        
        letter6.translatesAutoresizingMaskIntoConstraints = false
        letter6.text = "a"
        letter6.font = UIFont.systemFont(ofSize: 40)
        
        image.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(image)
        image.image = UIImage(named: "lambda_logo")
        
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(stackView)
        
        stackView.axis = .horizontal
        stackView.distribution = .equalSpacing
        
        stackView.addArrangedSubview(letter1)
        stackView.addArrangedSubview(letter2)
        stackView.addArrangedSubview(letter3)
        stackView.addArrangedSubview(letter4)
        stackView.addArrangedSubview(letter5)
        stackView.addArrangedSubview(letter6)
        
        stackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20).isActive = true
        stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
        stackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20).isActive = true
        
        image.topAnchor.constraint(equalTo: stackView.bottomAnchor, constant: 20).isActive = true
        image.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20).isActive = true
        image.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20).isActive = true
        image.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
    }
    
    func animateBackgroundColor() {
        if isScattered {
            UIView.animate(withDuration: 2.0) {
                self.letter1.layer.backgroundColor = UIColor.clear.cgColor
                self.letter2.layer.backgroundColor = UIColor.clear.cgColor
                self.letter3.layer.backgroundColor = UIColor.clear.cgColor
                self.letter4.layer.backgroundColor = UIColor.clear.cgColor
                self.letter5.layer.backgroundColor = UIColor.clear.cgColor
                self.letter6.layer.backgroundColor = UIColor.clear.cgColor
            }
        } else {
            UIView.animate(withDuration: 2.0) {
                self.letter1.layer.backgroundColor = UIColor(red: CGFloat.random(in: 1...255)/255, green: CGFloat.random(in: 1...255)/255, blue: CGFloat.random(in: 1...255)/255, alpha: 1).cgColor
                self.letter2.layer.backgroundColor = UIColor(red: CGFloat.random(in: 1...255)/255, green: CGFloat.random(in: 1...255)/255, blue: CGFloat.random(in: 1...255)/255, alpha: 1).cgColor
                self.letter3.layer.backgroundColor = UIColor(red: CGFloat.random(in: 1...255)/255, green: CGFloat.random(in: 1...255)/255, blue: CGFloat.random(in: 1...255)/255, alpha: 1).cgColor
                self.letter4.layer.backgroundColor = UIColor(red: CGFloat.random(in: 1...255)/255, green: CGFloat.random(in: 1...255)/255, blue: CGFloat.random(in: 1...255)/255, alpha: 1).cgColor
                self.letter5.layer.backgroundColor = UIColor(red: CGFloat.random(in: 1...255)/255, green: CGFloat.random(in: 1...255)/255, blue: CGFloat.random(in: 1...255)/255, alpha: 1).cgColor
                self.letter6.layer.backgroundColor = UIColor(red: CGFloat.random(in: 1...255)/255, green: CGFloat.random(in: 1...255)/255, blue: CGFloat.random(in: 1...255)/255, alpha: 1).cgColor
            }
        }
    }
    
    func animateShadows() {
        if isScattered {
            UIView.animate(withDuration: 2.0) {
                self.letter1.layer.shadowOpacity = 0
                self.letter2.layer.shadowOpacity = 0
                self.letter3.layer.shadowOpacity = 0
                self.letter4.layer.shadowOpacity = 0
                self.letter5.layer.shadowOpacity = 0
                self.letter6.layer.shadowOpacity = 0
            }
        } else {
            UIView.animate(withDuration: 2.0) {
                self.letter1.layer.shadowColor = UIColor.black.cgColor
                self.letter1.layer.shadowOffset = CGSize(width: 6, height: 6)
                self.letter1.layer.shadowOpacity = 1
                
                self.letter2.layer.shadowColor = UIColor.black.cgColor
                self.letter2.layer.shadowOffset = CGSize(width: 6, height: 6)
                self.letter2.layer.shadowOpacity = 1
                
                self.letter3.layer.shadowColor = UIColor.black.cgColor
                self.letter3.layer.shadowOffset = CGSize(width: 6, height: 6)
                self.letter3.layer.shadowOpacity = 1
                
                self.letter4.layer.shadowColor = UIColor.black.cgColor
                self.letter4.layer.shadowOffset = CGSize(width: 6, height: 6)
                self.letter4.layer.shadowOpacity = 1
                
                self.letter5.layer.shadowColor = UIColor.black.cgColor
                self.letter5.layer.shadowOffset = CGSize(width: 6, height: 6)
                self.letter5.layer.shadowOpacity = 1
                
                self.letter6.layer.shadowColor = UIColor.black.cgColor
                self.letter6.layer.shadowOffset = CGSize(width: 6, height: 6)
                self.letter6.layer.shadowOpacity = 1
            }
        }
    }
    
    func runAnimation() {
        let updatedLetter1Position: CGPoint = CGPoint(x: view.frame.width/6-60, y: 20)
        let updatedLetter2Position: CGPoint = CGPoint(x: 2*(view.frame.width/6)-60, y: 20)
        let updatedLetter3Position: CGPoint = CGPoint(x: 3*(view.frame.width/6)-60, y: 20)
        let updatedLetter4Position: CGPoint = CGPoint(x: 4*(view.frame.width/6)-60, y: 20)
        let updatedLetter5Position: CGPoint = CGPoint(x: 5*(view.frame.width/6)-60, y: 20)
        let updatedLetter6Position: CGPoint = CGPoint(x: 6*(view.frame.width/6)-60, y: 20)
        
        if isScattered {
            animateBackgroundColor()
            animateShadows()
            isScattered = false
            
            UIView.animate(withDuration: 2) {
                self.image.alpha = 1
                
                self.letter1.center = updatedLetter1Position
                self.letter1.textColor = .black
                self.letter1.transform = .identity
                
                self.letter2.center = updatedLetter2Position
                self.letter2.textColor = .black
                self.letter2.transform = .identity
                
                self.letter3.center = updatedLetter3Position
                self.letter3.textColor = .black
                self.letter3.transform = .identity
                
                self.letter4.center = updatedLetter4Position
                self.letter4.textColor = .black
                self.letter4.transform = .identity
                
                self.letter5.center = updatedLetter5Position
                self.letter5.textColor = .black
                self.letter5.transform = .identity
                
                self.letter6.center = updatedLetter6Position
                self.letter6.textColor = .black
                self.letter6.transform = .identity
            }
        } else {
            animateBackgroundColor()
            animateShadows()
            isScattered = true
            
            UIView.animate(withDuration: 2) {
                self.image.alpha = 0
                
                self.letter1.transform = CGAffineTransform(rotationAngle: CGFloat.random(in: 0...2*CGFloat.pi))
                self.letter2.transform = CGAffineTransform(rotationAngle: CGFloat.random(in: 0...2*CGFloat.pi))
                self.letter3.transform = CGAffineTransform(rotationAngle: CGFloat.random(in: 0...2*CGFloat.pi))
                self.letter4.transform = CGAffineTransform(rotationAngle: CGFloat.random(in: 0...2*CGFloat.pi))
                self.letter5.transform = CGAffineTransform(rotationAngle: CGFloat.random(in: 0...2*CGFloat.pi))
                self.letter6.transform = CGAffineTransform(rotationAngle: CGFloat.random(in: 0...2*CGFloat.pi))

                self.letter1.center = CGPoint(x: CGFloat.random(in: 0...self.view.frame.width-60), y: CGFloat.random(in: 0...self.view.frame.height-60))
                self.letter2.center = CGPoint(x: CGFloat.random(in: 0...self.view.frame.width-60), y: CGFloat.random(in: 0...(self.view.frame.height-60)))
                self.letter3.center = CGPoint(x: CGFloat.random(in: 0...self.view.frame.width-60), y: CGFloat.random(in: 0...(self.view.frame.height-60)))
                self.letter4.center = CGPoint(x: CGFloat.random(in: 0...self.view.frame.width-60), y: CGFloat.random(in: 0...(self.view.frame.height-60)))
                self.letter5.center = CGPoint(x: CGFloat.random(in: 0...self.view.frame.width-60), y: CGFloat.random(in: 0...(self.view.frame.height-60)))
                self.letter6.center = CGPoint(x: CGFloat.random(in: 0...self.view.frame.width-60), y: CGFloat.random(in: 0...(self.view.frame.height-60)))
                
                self.letter1.textColor = UIColor(red: CGFloat.random(in: 1...255)/255, green: CGFloat.random(in: 1...255)/255, blue: CGFloat.random(in: 1...255)/255, alpha: 1)
                self.letter2.textColor = UIColor(red: CGFloat.random(in: 1...255)/255, green: CGFloat.random(in: 1...255)/255, blue: CGFloat.random(in: 1...255)/255, alpha: 1)
                self.letter3.textColor = UIColor(red: CGFloat.random(in: 1...255)/255, green: CGFloat.random(in: 1...255)/255, blue: CGFloat.random(in: 1...255)/255, alpha: 1)
                self.letter4.textColor = UIColor(red: CGFloat.random(in: 1...255)/255, green: CGFloat.random(in: 1...255)/255, blue: CGFloat.random(in: 1...255)/255, alpha: 1)
                self.letter5.textColor = UIColor(red: CGFloat.random(in: 1...255)/255, green: CGFloat.random(in: 1...255)/255, blue: CGFloat.random(in: 1...255)/255, alpha: 1)
                self.letter6.textColor = UIColor(red: CGFloat.random(in: 1...255)/255, green: CGFloat.random(in: 1...255)/255, blue: CGFloat.random(in: 1...255)/255, alpha: 1)
            }
        }
    }
}

