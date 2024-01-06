//
//  infoPageVC.swift
//  Baga
//
//  Created by Saltanat on 18.12.2023.
//

import UIKit

class infoPageVC: UIViewController {

	var tableView = UITableView()

	override func viewDidLoad() {
		super.viewDidLoad()
		//background
		view.backgroundColor = UIColor(red: 1.0, green: 245/255, blue: 1.0, alpha: 1.0)

		//
	}


	func setupTableView() {

		// add cell
		tableView.register(infoPageTable.self, forCellReuseIdentifier: infoPageTable.reuse)
		view.addSubview(tableView)
		tableView.translatesAutoresizingMaskIntoConstraints = false

		NSLayoutConstraint.activate([
			tableView.topAnchor.constraint(equalTo: view.topAnchor),
			tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
			tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
			tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
		])
	}
}
