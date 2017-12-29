//
//  ViewController.swift
//  MAC_TEST
//
//  Created by sycf_ios on 2017/12/29.
//  Copyright © 2017年 sycf_ios. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    @IBOutlet weak var toolBarView: NSView!
    var tabView: NSTabView!
    @IBOutlet weak var segmentControl: NSSegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        tabView = NSTabView()
        tabView.tabViewType = .noTabsNoBorder
        
        tabView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(tabView)
        tabView.topAnchor.constraint(equalTo: toolBarView.bottomAnchor).isActive = true
        tabView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        tabView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        tabView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
        
        let oneVC = NSStoryboard(name: NSStoryboard.Name.init("Main"), bundle: nil).instantiateController(withIdentifier: NSStoryboard.SceneIdentifier.init("one")) as! NSViewController
        let twoVC = NSStoryboard(name: NSStoryboard.Name.init("Main"), bundle: nil).instantiateController(withIdentifier: NSStoryboard.SceneIdentifier.init("two")) as! NSViewController
        let threeVC = NSStoryboard(name: NSStoryboard.Name.init("Main"), bundle: nil).instantiateController(withIdentifier: NSStoryboard.SceneIdentifier.init("three")) as! NSViewController
        
        let oneItem = NSTabViewItem(viewController: oneVC)
        let twoItem = NSTabViewItem(viewController: twoVC)
        let threeItem = NSTabViewItem(viewController: threeVC)
        tabView.addTabViewItem(oneItem)
        tabView.addTabViewItem(twoItem)
        tabView.addTabViewItem(threeItem)
        tabView.selectTabViewItem(at: 0)
        segmentControl.selectedSegment = 0
    }

@IBAction func handleSegment(_ sender: Any) {
    let seg = sender as! NSSegmentedControl
    if seg.selectedSegment == 0 {
        tabView.selectTabViewItem(at: 0)
    }else if seg.selectedSegment == 1 {
        tabView.selectTabViewItem(at: 1)
    }else {
        tabView.selectTabViewItem(at: 2)
    }
    
}
    
    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

