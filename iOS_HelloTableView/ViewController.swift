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
        return 2
    }
    
    // Row number
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // return 3 // return fruitArray.count
        
        if section == 0 {
            return fruitArray.count
        } else {
            return colorArray.count
        }
    }
    
    // Row cell 每一列的內容
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // let cell = UITableViewCell()
        // 滑動到銀幕之外的cell，就不需要在佔用一個cell，由下方其他的cell遞補。可能是回收的或是新的cell，避免資料太多時佔用太多記憶體。
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        // indexPath.section // 哪個區塊
        if indexPath.section == 0 {
            cell.textLabel?.text = fruitArray[indexPath.row] // "iPhone"
        } else {
            cell.textLabel?.text = colorArray[indexPath.row]
        }
        
        return cell
    }
    
    // Row Title
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "FRUIT"
        } else {
            return "COLOR"
        }
    }
    
    // data Array
    var fruitArray = ["apple", "banana", "mango", "watermelon"]
    var colorArray = ["red", "green", "blue"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

