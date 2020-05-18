//
//  ViewController.swift
//  MetalPlayground
//
//  Created by Raheel Ahmad on 5/11/20.
//  Copyright © 2020 Raheel Ahmad. All rights reserved.
//

import Cocoa
import MetalKit

class ViewController: NSViewController {
    let metalView = MTKView()
    let renderer = Renderer()

    override func viewDidLoad() {
        super.viewDidLoad()

        metalView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(metalView)
        NSLayoutConstraint.activate([
            metalView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            metalView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            metalView.topAnchor.constraint(equalTo: view.topAnchor),
            metalView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            ]
        )

        renderer.setup(metalView)
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

