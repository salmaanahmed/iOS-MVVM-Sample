//
//  ViewController.swift
//  Test
//
//  Created by Salmaan Ahmed on 12/10/2019.
//  Copyright © 2019 Salmaan Ahmed. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // MARK: - Private Properties
    @IBOutlet private weak var firstNumber: UITextField!
    @IBOutlet private weak var secondNumber: UITextField!
    @IBOutlet private weak var answer: UILabel!
       
    private var viewModel: ViewModel
    
    private var answerNum = 0.0 {
        didSet {
            answer.text = String(answerNum)
        }
    }
    
    // MARK: - Life Cycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Init
    init(viewModel: ViewModel) {
        self.viewModel = viewModel
        
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Private Methods
//    private func bindData() {
//        viewModel.weatherString.observe { p
//
//        }
//    }
    
    
    // MARK: - Public Methods
    
    @IBAction func additionAction(_ sender: Any) {
        answerNum = viewModel.addition(firstNumber: viewModel.doubleValue(for: firstNumber.text),
                                       secondNumber: viewModel.doubleValue(for: secondNumber.text))
    }
    
    @IBAction func subtractionAction(_ sender: Any) {
        answerNum = viewModel.subtraction(firstNumber: viewModel.doubleValue(for: firstNumber.text),
                                          secondNumber: viewModel.doubleValue(for: secondNumber.text))
    }
    
    @IBAction func multiplicationAction(_ sender: Any) {
        answerNum = viewModel.multiplication(firstNumber: viewModel.doubleValue(for: firstNumber.text),
                                             secondNumber: viewModel.doubleValue(for: secondNumber.text))
    }
    
    @IBAction func divisionAction(_ sender: Any) {
        answerNum = viewModel.division(firstNumber: viewModel.doubleValue(for: firstNumber.text),
                                       secondNumber: viewModel.doubleValue(for: secondNumber.text))
    }
}

