//
//  ContentViewTest.swift
//  TestAppTests
//
//  Created by Arnold Noronha on 10/6/23.
//

#if canImport(UIKit)
import SnapshotTesting
import XCTest
import UIKit.UIImage
@testable import TestApp
import SwiftUI

final class ContentViewTest: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        /* let view = View {
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Hello, world!")
            }
        }*/
        
        let view = ContentView()
        
        assertSnapshot(of: view as ContentView, as: .image)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
#endif
