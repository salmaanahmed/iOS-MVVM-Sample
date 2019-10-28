//
//  CalculationHandler.swift
//  Test
//
//  Created by Salmaan Ahmed on 12/10/2019.
//  Copyright © 2019 Salmaan Ahmed. All rights reserved.
//

import Foundation

protocol CalculationHandling: AnyObject {
    func addition(firstNumber: Double, secondNumber: Double) -> Double
    func subtraction(firstNumber: Double, secondNumber: Double) -> Double
    func division(firstNumber: Double, secondNumber: Double) -> Double
    func multiplication(firstNumber: Double, secondNumber: Double) -> Double
}

class CalculationHandler: CalculationHandling {
    // MARK: - Public Properties
    
    // MARK: - Private Properties
    
    // MARK: - Public Methods
    
    func addition(firstNumber: Double, secondNumber: Double) -> Double {
        return firstNumber + secondNumber
    }
    
    func subtraction(firstNumber: Double, secondNumber: Double) -> Double {
        return firstNumber - secondNumber
    }
    
    func division(firstNumber: Double, secondNumber: Double) -> Double {
        return firstNumber / secondNumber
    }
    
    func multiplication(firstNumber: Double, secondNumber: Double) -> Double {
        return firstNumber * secondNumber
    }
    
    // MARK: - Private Methods
}
