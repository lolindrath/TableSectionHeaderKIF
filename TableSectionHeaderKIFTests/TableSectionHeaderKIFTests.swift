//
//  TableSectionTestingTests.swift
//  TableSectionTestingTests
//
//  Created by Williams, Andrew on 10/22/21.
//

import XCTest
import KIF
@testable import TableSectionHeaderKIF

extension XCTestCase {
    func tester(file: String = #file, _ line: Int = #line, executionTimeout: TimeInterval = 5) -> KIFUITestActor {
        let actor = KIFUITestActor(inFile: file, atLine: line, delegate: self)!
        actor.usingTimeout(executionTimeout)
        return actor
    }
}

class TableSectionTestingTests: XCTestCase {
    
    func displayVC(_ viewController: UIViewController, inNav: Bool = true, speed: Float = 100) {
        UIApplication.shared.windows.first(where: { $0.isKeyWindow })?.rootViewController = inNav ? UINavigationController(rootViewController: viewController) : viewController
        UIApplication.shared.windows.first(where: { $0.isKeyWindow })?.makeKeyAndVisible()

    }
    
    func testLayout() {
        let vc = UIStoryboard(name: "Main", bundle: Bundle(for: ViewController.self)).instantiateViewController(withIdentifier: "ViewController")
        displayVC(vc)
        
        let navigationSubtitle = tester().waitForView(withAccessibilityIdentifier: "NavigationSubtitle") as! UILabel


        
        XCTAssertEqual(navigationSubtitle.text, "Some Text Here")
    }

}
