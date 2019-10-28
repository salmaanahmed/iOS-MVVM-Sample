//
//  ViewModelTestCase.swift
//  TestTests
//
//  Created by Salmaan Ahmed on 15/10/2019.
//  Copyright © 2019 Salmaan Ahmed. All rights reserved.
//

import XCTest
@testable import Test

class ViewModelTestCase: XCTestCase {
    
    private var calculationHandler: CalculationHandlerMock!
    private var viewModel: ViewModel!
    

    override func setUp() {
        calculationHandler = CalculationHandlerMock()
        viewModel = ViewModel(calculationHandler: calculationHandler)
        
    }

    override func tearDown() {
        calculationHandler = nil
        viewModel = nil
    }

    func testAddition() {
        // Given
        let firstNumber = 2.0
        let secondNumber = 4.0
        
        // When
        calculationHandler.answer = 6.0 /// Your question would be why am I doing this ? So answer is that we have already tested logic for calculation handler in `CalculationHandlerTestCase`, here we will make sure through these tests that our viewModel is working as expected. If we put logic of `CalculationHandler` then it's not mocking, it's writing boiler plate code, duplicated code, which needs to be mentained.
        let expectedAnswer = viewModel.addition(firstNumber: firstNumber, secondNumber: secondNumber)
        
        // Then
        XCTAssertEqual(expectedAnswer, 6.0)
    }
    
    func testSubtraction() {
        // Given
        let firstNumber = 2.0
        let secondNumber = 4.0
        
        // When
        calculationHandler.answer = -2.0
        let expectedAnswer = viewModel.subtraction(firstNumber: firstNumber, secondNumber: secondNumber)
        
        // Then
        XCTAssertEqual(expectedAnswer, -2.0)
    }
    
    func testMultiplication() {
        // Given
        let firstNumber = 2.0
        let secondNumber = 4.0
        
        // When
        calculationHandler.answer = 8.0
        let expectedAnswer = viewModel.multiplication(firstNumber: firstNumber, secondNumber: secondNumber)
        
        // Then
        XCTAssertEqual(expectedAnswer, 8.0)
    }
    
    func testDivision() {
        // Given
        let firstNumber = 2.0
        let secondNumber = 4.0
        
        // When
        calculationHandler.answer = 0.5
        let expectedAnswer = viewModel.division(firstNumber: firstNumber, secondNumber: secondNumber)
        
        // Then
        XCTAssertEqual(expectedAnswer, 0.5)
    }
    
    func testDoubleValueShouldReturnZeroWhenTextIsEmpty() {
        // Given
        let text = ""
        
        // When
        let expectedAnswer = viewModel.doubleValue(for: text)
        
        // Then
        XCTAssertEqual(expectedAnswer, 0.0)
    }

    /// We try to write unit test name understandable like, start with keyword `test`, add `functionName`, what action it should do/perform/return and under what circumstances ;) 
    func testDoubleValueShouldReturnNonZeroNumberWhenTextIsNotEmpty() {
        // Given
        let text = "2.0"
        
        // When
        let expectedAnswer = viewModel.doubleValue(for: text)
        
        // Then
        XCTAssertEqual(expectedAnswer, 2.0)
    }
}
