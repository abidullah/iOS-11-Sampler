//
//  DataSource.swift
//  iOS-11-Sampler
//
//  Created by Artem Novichkov on 17/06/2017.
//  Copyright © 2017 Artem Novichkov. All rights reserved.
//

import UIKit

struct Sample {
    let title: String
    let description: String
    let storyboardName: String
    
    var controller: UIViewController? {
        let storyboard = UIStoryboard(name: storyboardName, bundle: nil)
        let viewController = storyboard.instantiateInitialViewController()
        viewController?.title = title
        return viewController
    }
}

struct DataSource {
    lazy var samples = [Sample(title: "Vision", description: "Vision description", storyboardName: "Vision")]
}