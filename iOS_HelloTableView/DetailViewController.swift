//
//  DetailViewController.swift
//  iOS_HelloTableView
//
//  Created by 王麒翔 on 2023/7/28.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myImageView: UIImageView!
    
    var infoFromViewOne: String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        if let okFileName = infoFromViewOne {
            myLabel.text = okFileName
            myImageView.image = UIImage(named: okFileName)
        }
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
