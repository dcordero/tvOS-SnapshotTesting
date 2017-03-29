//
//  tvOS_snapshot_testingTests.swift
//  tvOS-snapshot-testingTests
//
//  Created by David Cordero on 29.03.17.
//  Copyright © 2017 David Cordero. All rights reserved.
//

import FBSnapshotTestCase
@testable import tvOS_snapshot_testing

class tvOS_snapshot_testingTests: FBSnapshotTestCase {
    
    override func setUp() {
        super.setUp()
        recordMode = true
    }
    
    func testViewController() {
        let daViewController = UIStoryboard(name: "Main", bundle: nil).instantiateInitialViewController() as! ViewController
        
        FBSnapshotVerifyView(daViewController.view)
        FBSnapshotVerifyLayer(daViewController.view.layer)
    }
}
