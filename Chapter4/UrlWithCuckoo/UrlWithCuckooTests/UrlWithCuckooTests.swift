//
//  UrlWithCuckooTests.swift
//  UrlWithCuckooTests
//
//  Created by Lakshmi Bomma on 10/18/16.
//  Copyright © 2016 riis. All rights reserved.
//

import XCTest
import Cuckoo

@testable import UrlWithCuckoo

class UrlWithCuckooTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testUrl()
    {
        let mock = MockUrlSession()
        let urlStr  = "http://riis.com"
        let url  = URL(string:urlStr)!

        
        stub(mock)
        { (mock) in
            
            when(mock.apiUrl).get.thenReturn(urlStr)
        }
        
        stub(mock)
        { (mock) in
            
            when(mock.url).get.thenReturn(url)
        }
        
        stub(mock)
        { (mock) in
            
            when(mock.session).get.thenReturn(URLSession())
        }
        stub(mock) { (stub) in
            stub.getSourceUrl().thenReturn(url)
        }

        stub(mock) { mock in
            mock.callApi(url: equal(to:url, equalWhen: { $0 == $1 })).thenReturn("testResult")
        }
        
        
        XCTAssertNotNil(verify(mock).session)
        XCTAssertNotNil(verify(mock).apiUrl)
        XCTAssertNotNil(verify(mock).url)

        XCTAssertEqual(mock.apiUrl, urlStr)
        XCTAssertEqual(mock.url?.absoluteString, urlStr)
        XCTAssertNotNil(mock.session)
        XCTAssertEqual(mock.callApi(url: url),"testResult")

    }
    
  
    
}
