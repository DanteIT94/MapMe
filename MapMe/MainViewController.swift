//
//  MainViewController.swift
//  MapMe
//
//  Created by Денис on 11.04.2023.
//

import UIKit

class MainViewController: UITableViewController {

    let restorantsNames = ["Балкан Гриль",
                           "Бочка",
                           "Вкусные истории",
                           "Дастархан",
                           "Индокитай",
                           "Классик",
                           "Шок",
                           "Bonsai",
                           "Burger Heroes",
                           "Kitchen",
                           "Love&Life",
                           "Morris Pub",
                           "Sherlock Holmes",
                           "Speak Easy",
                           "X.O"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restorantsNames.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        cell.textLabel?.text = restorantsNames[indexPath.row]
        cell.imageView?.image = UIImage(named: restorantsNames[indexPath.row])
        
        return cell
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
