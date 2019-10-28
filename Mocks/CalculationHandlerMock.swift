//
//  CalculationHandlerMock.swift
//  Test
//
//  Created by Salmaan Ahmed on 12/10/2019.
//  Copyright © 2019 Salmaan Ahmed. All rights reserved.
//

import Foundation

class CalculationHandlerMock: CalculationHandling {
    
    var answer = 0.0
    
    func addition(firstNumber: Double, secondNumber: Double) -> Double {
        return answer
    }
    
    func subtraction(firstNumber: Double, secondNumber: Double) -> Double {
        return answer
    }
    
    func division(firstNumber: Double, secondNumber: Double) -> Double {
        return answer
    }
    
    func multiplication(firstNumber: Double, secondNumber: Double) -> Double {
        return answer
    }
}
