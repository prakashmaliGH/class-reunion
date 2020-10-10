//
//  EventsViewController.swift
//  class-reunion
//
//  Created by Prakash Sundesha on 09/10/20.
//  Copyright © 2020 Prakash Sundesha. All rights reserved.
//

import UIKit

class EventsViewController: UIViewController {
    
    @IBOutlet weak var tableViewOutlet: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // setting the delegate and datasource
        tableViewOutlet.delegate = self
        tableViewOutlet.dataSource = self
        //registering the nib
        tableViewOutlet.register(UINib(nibName: "EventsTableViewCell", bundle: nil), forCellReuseIdentifier: "EventsTableViewCell")
        // setting up navigation bar
        setupNavBar()
    }

    func setupNavBar(){
        navigationController?.navigationItem.largeTitleDisplayMode = .always
    }
}

// tableview Delegate and datasource methods
extension EventsViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "EventsTableViewCell") as! EventsTableViewCell
        cell.eventImage.image = UIImage(named: "cap")
        cell.eventTitle.text = "Captain America"
        cell.eventDescription.text = "I can do that all day.I can do that all day.I can do that all day.I can do that all day.I can do that all day.I can do that all day.I can do that all day.I can do that all day."
        return cell
    }
    
    
}
