//
//  ViewController.swift
//  TableSectionTesting
//
//  Created by Williams, Andrew on 10/22/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.dataSource = self
        tableView.delegate = self
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "Testing")
        cell.textLabel?.text = "Testing"
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        3
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        54.0
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        print("viewForHeaderInSection: \(section)")
        let header = UITableViewHeaderFooterView()
        let label = UILabel(frame: CGRect(x: 18, y: 0, width: Int(tableView.frame.size.width) - 36, height: 45))
        label.text = "Some Text Here"
        label.numberOfLines = 0
        label.accessibilityIdentifier = "NavigationSubtitle"
        header.addSubview(label)

        return header
    }
}

