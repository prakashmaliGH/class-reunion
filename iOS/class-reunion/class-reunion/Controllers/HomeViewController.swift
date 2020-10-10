//
//  ViewController.swift
//  class-reunion
//
//  Created by Prakash Sundesha on 08/10/20.
//  Copyright © 2020 Prakash Sundesha. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    let userData : [User] = [
        User(image: "rock", name: "Rock", phone: "12345"),
        User(image: "chris", name: "Chris", phone: "09876" ),
        User(image: "stark", name: "Stark", phone: "30000"),
        User(image: "cap", name: "Cap", phone: "90000")
    ]
    
    @IBOutlet weak var segmentControl: UISegmentedControl!
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //setting delegate and datasource
        collectionView.delegate = self
        collectionView.dataSource = self
        //setting up navigation bar
        setupNavBar()
        //registering nib
        collectionView.register(UINib(nibName: "CollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "ReusableCustomCell")
    }
    
    func setupNavBar(){
        let searchController = UISearchController(searchResultsController: nil)
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.searchBar.placeholder = "Search"
        searchController.searchBar.backgroundColor = .orange
        searchController.searchBar.tintColor = .black
        searchController.searchBar.barTintColor = .orange
        navigationItem.searchController = searchController
        navigationController?.navigationBar.barTintColor = .orange
    }
    
    func setupSegmentControl(){
        segmentControl.tintColor = .white
        segmentControl.backgroundColor = .clear
    }
}

//MARK:- Data source and Delegate methods
extension HomeViewController: UICollectionViewDataSource, UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return userData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ReusableCustomCell", for: indexPath) as! CollectionViewCell
        let cellData = userData[indexPath.row]
        cell.profileImage.image = UIImage(named: cellData.profileImage!)
        cell.name.text = cellData.name
        cell.phone.text = cellData.phone
        return cell
    }
}

//MARK: Searchbar delegate methods

extension HomeViewController : UISearchBarDelegate, UISearchControllerDelegate, UISearchResultsUpdating {
    
    func updateSearchResults(for searchController: UISearchController) {
        print("0")
    }
    
    
}
