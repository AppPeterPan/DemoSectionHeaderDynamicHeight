//
//  PostTableViewController.swift
//  DemoSectionHeaderDynamicHeight
//
//  Created by SHIH-YING PAN on 2021/5/7.
//

import UIKit

class PostTableViewController: UITableViewController {
    
    @IBOutlet var postContentView: PostContentView!
    let comments = [
        "θΆε₯½ηη π",
        "θΆε₯½η¬η π€ͺ",
        "δΈηζεΎζδΈθΌ©ε­ π­π­π­π­π­π­"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        postContentView.label.text = "Small-time football coach Ted Lasso is hired to coach a professional soccer team in England, despite having no experience coaching soccer."
        postContentView.imageView.image = UIImage(named: "Ted Lasso")
        
        
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        return postContentView
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return comments.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CommentCell", for: indexPath)
        
        // Configure the cell...
        cell.textLabel?.text = comments[indexPath.row]
        return cell
    }
    
}
