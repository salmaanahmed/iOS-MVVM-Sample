//
//  ViewModel.swift
//  Test
//
//  Created by Salmaan Ahmed on 12/10/2019.
//  Copyright © 2019 Salmaan Ahmed. All rights reserved.
//

import Foundation

class ViewModel {
    
    // MARK: - Private Properties
    let calculationHandler: CalculationHandling
    
    // MARK: - Init
    init(calculationHandler: CalculationHandling) {
        self.calculationHandler = calculationHandler
    }
    
    // MARK: - Public Methods
    
    func addition(firstNumber: Double, secondNumber: Double) -> Double {
        return calculationHandler.addition(firstNumber: firstNumber, secondNumber: secondNumber)
    }
    
    func subtraction(firstNumber: Double, secondNumber: Double) -> Double {
        return calculationHandler.subtraction(firstNumber: firstNumber, secondNumber: secondNumber)
    }
    
    func multiplication(firstNumber: Double, secondNumber: Double) -> Double {
        return calculationHandler.multiplication(firstNumber: firstNumber, secondNumber: secondNumber)
    }
    
    func division(firstNumber: Double, secondNumber: Double) -> Double {
        return calculationHandler.division(firstNumber: firstNumber, secondNumber: secondNumber)
    }
    
    func doubleValue(for text: String?) -> Double {
        guard
            let text = text,
            let number = Double(text)
        else { return 0.0 }
        
        return number
    }
}
