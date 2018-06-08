//
//  ViewController.swift
//  SayoojFLoatingButton
//
//  Created by Don Mag on 6/8/18.
//  Copyright © 2018 DonMag. All rights reserved.
//

import UIKit

class FloatingView  : UIView {
	
	lazy var floatingButton : UIButton = {
		let button = UIButton(type: UIButtonType.system)
		button.setBackgroundImage(#imageLiteral(resourceName: "ic_add_circle_white_36pt"), for: .normal)
		button.tintColor = UIColor.purple  //UIColor().themePurple()
		button.addTarget(self, action: #selector(buttonClicked), for: UIControlEvents.touchUpInside)
		button.translatesAutoresizingMaskIntoConstraints = false
		return button
	}()
	
	override init(frame: CGRect) {
		super.init(frame: frame)
		setupViews()
	}
	
	required init?(coder aDecoder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
	func setupViews(){ addSubview(floatingButton) }
	
	override func didMoveToWindow() {
		super.didMoveToWindow()
		
		floatingButton.rightAnchor.constraint(equalTo: layoutMarginsGuide.rightAnchor).isActive = true
		floatingButton.bottomAnchor.constraint(equalTo: layoutMarginsGuide.bottomAnchor).isActive = true
		floatingButton.widthAnchor.constraint(equalToConstant: 60).isActive = true
		floatingButton.heightAnchor.constraint(equalToConstant: 60).isActive = true
		
	}
	
	@objc func buttonClicked (){
		print("Clicked..")
	}
}

class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
		
		let floatingButton = FloatingView()
		view.addSubview(floatingButton)
		floatingButton.translatesAutoresizingMaskIntoConstraints = false
		
		floatingButton.rightAnchor.constraint(equalTo: view.layoutMarginsGuide.rightAnchor).isActive = true
		floatingButton.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor).isActive = true
		floatingButton.widthAnchor.constraint(equalToConstant: 150).isActive = true
		floatingButton.heightAnchor.constraint(equalTo: floatingButton.widthAnchor).isActive = true
		
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}

