//
//  CalculationHandlerTestCase.swift
//  TestTests
//
//  Created by Salmaan Ahmed on 12/10/2019.
//  Copyright © 2019 Salmaan Ahmed. All rights reserved.
//

import XCTest
@testable import Test

class CalculationHandlerTestCase: XCTestCase {

    var calculationHandler: CalculationHandler!

    override func setUp() {
        calculationHandler = CalculationHandler()
    }

    override func tearDown() {
        calculationHandler = nil
    }

    func testAddition() {
        // Given
        let firstNumber = 454.0
        let secondNumber = 654.0
        
        // When
        let result = calculationHandler.addition(firstNumber: firstNumber, secondNumber: secondNumber)
        
        // Then
        XCTAssertEqual(result, 1108.0)
    }
    
    func testSubtraction() {
        // Given
        let firstNumber = 454.0
        let secondNumber = 654.0
        
        // When
        let result = calculationHandler.subtraction(firstNumber: firstNumber, secondNumber: secondNumber)
        
        // Then
        XCTAssertEqual(result, -200.0)
    }
    
    func testDivision() {
        // Given
        let firstNumber = 454.0
        let secondNumber = 654.0
        
        // When
        let result = calculationHandler.division(firstNumber: firstNumber, secondNumber: secondNumber)
        
        // Then
        XCTAssertEqual(result, 0.6941896024464832)
    }
    
    func testMultiplication() {
        // Given
        let firstNumber = 4.0
        let secondNumber = 6.0
        
        // When
        let result = calculationHandler.multiplication(firstNumber: firstNumber, secondNumber: secondNumber)
        
        // Then
        XCTAssertEqual(result, 24.0)
    }
}



