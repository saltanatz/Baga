//
//  ViewController.swift
//  Baga
//
//  Created by Saltanat on 11.12.2023.
//

import UIKit

class ViewController: UIViewController {
	var firstPageFrame = UIImageView()
	var firstPageCGPAButton = UIButton()
	var firstPageWelcome = UILabel()
	var firstPageSemesterButton = UIButton()
	var firstPageCourseButton = UIButton()
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.
		//background
		view.backgroundColor = UIColor(red: 1.0, green: 245/255, blue: 1.0, alpha: 1.0)
		//White frame
		firstPageFrame.image = UIImage(named: "recFrame.png")
		firstPageFrame.translatesAutoresizingMaskIntoConstraints = false
		view.addSubview(firstPageFrame)
		
		//Welcome text
		firstPageWelcome.text = "Welcome!"
		firstPageWelcome.font = .systemFont(ofSize: 18)
		firstPageWelcome.translatesAutoresizingMaskIntoConstraints = false
		view.addSubview(firstPageWelcome)
		
		//CGPA Button
		firstPageCGPAButton.setImage(UIImage(named: "CGPAButton.png"), for: .normal)
		firstPageCGPAButton.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
		
		firstPageCGPAButton.translatesAutoresizingMaskIntoConstraints = false
		view.addSubview(firstPageCGPAButton)
		
		//Semester GPA Button
		firstPageSemesterButton.setImage(UIImage(named: "SGPAButton.png"), for: .normal)
		firstPageSemesterButton.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
		
		firstPageSemesterButton.translatesAutoresizingMaskIntoConstraints = false
		view.addSubview(firstPageSemesterButton)
		
		//Course GPA Button
		firstPageCourseButton.setImage(UIImage(named: "CourseButton.png"), for: .normal)
		firstPageCourseButton.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
		
		firstPageCourseButton.translatesAutoresizingMaskIntoConstraints = false
		view.addSubview(firstPageCourseButton)
		
		setUpConstraints()
		
	}
	func setUpConstraints() {
		NSLayoutConstraint.activate([
			firstPageFrame.centerXAnchor.constraint(equalTo: view.centerXAnchor),
			firstPageFrame.centerYAnchor.constraint(equalTo: view.centerYAnchor)
		])
		
		NSLayoutConstraint.activate([
			firstPageWelcome.centerXAnchor.constraint(equalTo: view.centerXAnchor),
			firstPageWelcome.topAnchor.constraint(equalTo: firstPageFrame.topAnchor, constant: 20)
		])
		
		NSLayoutConstraint.activate([
			firstPageCGPAButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
			firstPageCGPAButton.centerYAnchor.constraint(equalTo: firstPageFrame.centerYAnchor, constant: -120)
		])
		
		NSLayoutConstraint.activate([
			firstPageSemesterButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
			firstPageSemesterButton.centerYAnchor.constraint(equalTo: firstPageFrame.centerYAnchor)
		])
		
		NSLayoutConstraint.activate([
			firstPageCourseButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
			firstPageCourseButton.centerYAnchor.constraint(equalTo: firstPageFrame.centerYAnchor, constant: 120)
		])
		
	}
	
	@objc func buttonAction() {
		print("I was hit")
	}

}

