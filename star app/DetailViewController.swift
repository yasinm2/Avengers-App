//
//  DetailViewController.swift
//  star app
//
//  Created by Yasin Ağbulut on 5.03.2023.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var mylbl: UILabel!
    
    @IBOutlet weak var myımageview: UIImageView!
    
    var userDetail = User()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        mylbl.text = userDetail.firstname
        myımageview.image = userDetail.picture
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
