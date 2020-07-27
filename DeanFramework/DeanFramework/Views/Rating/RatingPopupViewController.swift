//
//  RatingPopupViewController.swift
//  DeanFramework
//
//  Created by Juan Trinidad Jimenez Armesto on 18/07/2020.
//  Copyright © 2020 Juan Trinidad Jimenez Armesto. All rights reserved.
//

import UIKit

//------------------------------------------------
// MARK: - RatingPopupViewControllerProtocol
//------------------------------------------------

protocol RatingPopupViewControllerProtocol: class {
    func enableRatingButton()
}

//------------------------------------------------
// MARK: - RatingPopupViewController
//------------------------------------------------

public final class RatingPopupViewController: UIViewController {

    //------------------------------------------------
    // MARK: - Outlets
    //------------------------------------------------
    
    @IBOutlet weak var modalView: UIView!
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var bodyLabel: UILabel!
    
    @IBOutlet weak var option1Label: UILabel!
    @IBOutlet weak var option2Label: UILabel!
    @IBOutlet weak var option3Label: UILabel!
    
    @IBOutlet var optionsImageView: [UIImageView]!
    @IBOutlet var optionsButtons: [UIButton]!
    
    @IBOutlet weak var placeholderLabel: UILabel!
    @IBOutlet weak var commentsTextView: UITextView!
    
    @IBOutlet weak var rateButton: UIButton!
    @IBOutlet weak var closeButton: UIButton!
    
    //------------------------------------------------
    // MARK: - Init
    //------------------------------------------------
    
    init(nibName: String, bundle: Bundle, viewModel: RatingPopupViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nibName, bundle: bundle)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //------------------------------------------------
    // MARK: - Variables and constants
    //------------------------------------------------
    
    private var viewModel: RatingPopupViewModel
    
    //------------------------------------------------
    // MARK: - LifeCycle
    //------------------------------------------------
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        
        self.setup()
        self.localize()
    }
    
    //------------------------------------------------
    // MARK: - Setup view
    //------------------------------------------------
    
    private func setup() {
        self.view.backgroundColor = UIColor.clear
        self.view.isOpaque = false
        
        _ = self.optionsImageView.enumerated().map {  (index, imageView) in
            imageView.tag = index
            imageView.layer.cornerRadius = imageView.frame.height / 2
            imageView.clipsToBounds = true
            imageView.layer.borderWidth = 1
            imageView.layer.borderColor = UIColor.gray.cgColor
            imageView.backgroundColor = .white
        }
        
        _ = self.optionsButtons.enumerated().map {  (index, button) in
            button.tag = index
        }
        
        self.commentsTextView.delegate = self
        self.commentsTextView.layer.cornerRadius = 4
        self.commentsTextView.clipsToBounds = true
        self.commentsTextView.layer.borderWidth = 1
        self.commentsTextView.layer.borderColor = UIColor.gray.cgColor
        
        self.rateButton.isEnabled = false
        self.rateButton.alpha = 0.5
    }
    
    private func localize() {
        self.titleLabel.text = self.viewModel.title
        self.bodyLabel.text = self.viewModel.body
        self.option1Label.text = self.viewModel.option1Text
        self.option2Label.text = self.viewModel.option2Text
        self.option3Label.text = self.viewModel.option3Text
        self.placeholderLabel.text = self.viewModel.placeholderText
        self.rateButton.setTitle(self.viewModel.rateButton, for: .normal)
        self.closeButton.setTitle(self.viewModel.closeButton, for: .normal)
    }
    
    //------------------------------------------------
    // MARK: - Button actions
    //------------------------------------------------
    
    @IBAction func closeView(_ sender: UIButton) {
        self.viewModel.closeView()
    }
    
    @IBAction func rateAction(_ sender: UIButton) {
        self.viewModel.rateAction(comments: self.commentsTextView.text)
    }
    
    @IBAction func selectOption(_ sender: UIButton) {
        self.viewModel.setSelectedOption(sender.tag)
        self.optionsImageView.forEach({ $0.backgroundColor = .white })
        if let imageView = self.optionsImageView.filter({ $0.tag == sender.tag }).first {
            imageView.backgroundColor = .black
        }
    }
    
    //------------------------------------------------
    // MARK: - UIResponder
    //------------------------------------------------
    
    public override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
        super.touchesBegan(touches, with: event)
    }
    
}

//------------------------------------------------
// MARK: - RatingPopupViewControllerProtocol
//------------------------------------------------

extension RatingPopupViewController: RatingPopupViewControllerProtocol {
    
    func enableRatingButton() {
        self.rateButton.isEnabled = true
        self.rateButton.alpha = 1
    }
    
}

//-----------------------------------------------
// MARK: - UITextViewDelegate method
//-----------------------------------------------

extension RatingPopupViewController: UITextViewDelegate {
    
    public func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        let newText = (textView.text as NSString).replacingCharacters(in: range, with: text)
        let numberOfChars = newText.count
        
        if numberOfChars == 0 {
            self.placeholderLabel.text = self.viewModel.placeholderText
        } else {
            self.placeholderLabel.text = ""
        }
        
        return numberOfChars < 5000
    }
    
}
