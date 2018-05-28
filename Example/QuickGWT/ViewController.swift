//
//  ViewController.swift
//  QuickGWT
//
//  Created by mennolovink on 05/27/2018.
//  Copyright (c) 2018 mennolovink. All rights reserved.
//

import UIKit

public class ViewController: UIViewController {

    public var viewModel: ViewControllerViewModel?
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        guard let viewModel = viewModel else { logger.log("Expected viewModel", atLevel: .error); return }
        
        title = viewModel.title
        view.backgroundColor = viewModel.backgroundColor
    }
}

