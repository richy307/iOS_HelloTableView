//
//  ViewController.swift
//  iOS_HelloTableView
//
//  Created by 王麒翔 on 2023/7/27.
//

import UIKit

// UITableViewDataSource, UITableViewDelegate 協定
class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    // 實作section (區塊)
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    // Row number
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    // Row cell 每一列的內容
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = "iPhone"
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

