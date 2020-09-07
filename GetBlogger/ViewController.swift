//
//  ViewController.swift
//  GetBlogger
//
//  Created by Daniyar Agaltsov on 8/25/20.
//  Copyright © 2020 Agaltsov. All rights reserved.
//

import FirebaseFirestoreSwift
import Firebase
import UIKit

import FirebaseFirestore
import SDWebImage


class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    @IBOutlet weak var tableView: UITableView!
    
    
    private var bloggers: [BloggerNetworkModel] = [] {
        
       didSet {
                tableView.reloadData()
            }
    }


    
    private var listener: ListenerRegistration?
    
    override func viewDidLoad() {
          super.viewDidLoad()
          setupDatabaseListener()
        tableView.delegate = self
        tableView.dataSource = self
      }
    
    
    func setupDatabaseListener() {
        listener = db.collection("bloggers").order(by: "IGUsername", descending: true).addSnapshotListener { [unowned self] (snapshot, error) in
            if let error = error {
                self.showError(with: error.localizedDescription)
            } else if let documents = snapshot?.documents {
                self.bloggers = documents.compactMap { (document) -> BloggerNetworkModel? in
                    var blogger = try! document.data(as: BloggerNetworkModel.self)
                    blogger?.bloggerID = document.documentID
                    return blogger
                }
                self.tableView.reloadData()
            }
        }
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print(bloggers.count)
           return bloggers.count
            
       }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BloggerTableViewCell", for: indexPath) as! BloggerTableViewCell
        cell.configure(with: bloggers[indexPath.row])
        return cell
    }
    
    
    
    
  
    
    
    
    
  


}

