//
//  MainViewController.swift
//  habitual
//
//  Created by Lucia Reynoso on 11/15/18.
//  Copyright © 2018 Lucia Reynoso. All rights reserved.
//

import UIKit

class HabitsTableViewController: UITableViewController {
    
    var names: [String] = ["Alan", "Adriana", "Adam", "Anne", "Mitchell", "Dani"]
    var habits: [Habit] = [
        Habit(title: "Go to bed before 10p"),
        Habit(title: "Drink 8 glasses of water"),
        Habit(title: "Commit today"),
        Habit(title: "Stand up every hour")
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setupNavBar()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return habits.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell: UITableViewCell
        if let dequeueCell = tableView.dequeueReusableCell(withIdentifier: "cell") {
            cell = dequeueCell
        } else {
            cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
        }
        
        cell.textLabel?.text = habits[indexPath.row].title
        
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

extension HabitsTableViewController {
    
    func setupNavBar() {
        title = "Habitual"
        let addButton = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(pressAddHabit(_:)))
        navigationItem.rightBarButtonItem = addButton
    }
    
    @objc func pressAddHabit(_ sender: UIBarButtonItem) {
        habits.insert(Habit(title: "Hello, World!"), at: 0)
        let topIndexPath = IndexPath(row: 0, section: 0)
        tableView.insertRows(at: [topIndexPath], with: .automatic)
    }
}
