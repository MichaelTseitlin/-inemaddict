//
//  MainViewController.swift
//  Сinemaddict
//
//  Created by Michael Tseitlin on 6/5/19.
//  Copyright © 2019 Michael Tseitlin. All rights reserved.
//

import UIKit

class MainViewController: UITableViewController {
    
    private var cinemas = [Cinema]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cinemas = DataManager.loadData()
    }
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cinemas.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "showDetail", for: indexPath) as! CinemasViewCell
        
        let cinema = cinemas[indexPath.row]
        
        cell.configureCell(cinema: cinema, with: indexPath)
        
        return cell
    }
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard segue.identifier == "showDetail" else { return }
        guard let row = tableView.indexPathForSelectedRow?.row else { return }
        
        let detailViewController = segue.destination as! DetailViewController
        
        let cinema = cinemas[row]
        detailViewController.cinema = cinema
    }
    
}
