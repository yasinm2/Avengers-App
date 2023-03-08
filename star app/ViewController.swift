//
//  ViewController.swift
//  star app
//
//  Created by Yasin Ağbulut on 5.03.2023.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    

    @IBOutlet weak var mytable: UITableView!
    var users = [User]()
    var user = User()
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        loaddata()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        let row = users[indexPath.row]
        cell.textLabel?.text = row.firstname
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let row = users[indexPath.row]
        user = row
        self.performSegue(withIdentifier: "toDetail", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetail" {
            let desVC = segue.destination as! DetailViewController
            desVC.userDetail = self.user
        }
    }
    
    
    func loaddata() {
        
        let user1 = User()
        user1.firstname = "Iron Man"
        user1.picture = UIImage(named: "ıronman")!
        users.append(user1)
        
        let user2 = User()
        user2.firstname = "Captain America"
        user2.picture = UIImage(named: "america")!
        users.append(user2)
        
        let user3 = User()
        user3.firstname = "Spider Man"
        user3.picture = UIImage(named: "spiderman")!
        users.append(user3)
       
        let user4 = User()
        user4.firstname = "Thor"
        user4.picture = UIImage(named: "thor")!
        users.append(user4)
        
        
    }


}

