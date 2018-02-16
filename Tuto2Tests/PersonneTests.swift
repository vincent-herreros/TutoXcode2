//
//  PersonneTests.swift
//  Tuto2
//
//  Created by Vincent HERREROS on 06/02/2018.
//  Copyright © 2018 Vincent HERREROS. All rights reserved.
//

import XCTest

class PersonneTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testNomComplet() {
        let p : Personne = Personne(nom: "Vincent", prenom: "Herreros")
        XCTAssertEqual(p.nomComplet, "Vincent Herreros")
        
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
