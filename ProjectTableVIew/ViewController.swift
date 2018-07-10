//
//  ViewController.swift
//  ProjectTableVIew
//
//  Created by Mansi Mahajan on 6/18/18.
//  Copyright © 20


//18 Mansi Mahajan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

  
    @IBOutlet weak var heightOfTable: NSLayoutConstraint!
    @IBOutlet weak var tableOutlet: UITableView!
    
    
    let array = ["jvfhxggxsxgscdgcghdsfgfdfgcfsgcfgdfcgfsdgcfgdfcgdfcgfdgsfghcgdgcgdcgsgcfgdfcgfdgcfgdcfgdfcgdgcgdcgdcfdfcgdcfgdfcgfdgcgdfcgfdgcgdcfgdfcgdgcdgcghfghfreryrdfgfgfgffgegegffgfcdfdfsdsdsdsadsdzsasdasasasasasasasassasasasasagdeydfyeffdgfgffgdfgffggffgfgsfdhgrtrwyterdtefetrtrtywdrtyrjvfhxggxsxgscdgcghdsfgfdfgcfsgcfgdfcgfsdgcfgdfcgdfcgfdgs", "jvfhxggxsxgscdgcghdsfgfdfgcfsgcfgdfcgfsdgcfgdfcgdfcgfdgsfghcgdgcgdcgsgcfgdfcgfdgcfgdcfgdfcgdgcgdcgdcfdfcgdcfgdfcgfdgcgdfcgfdgcgdcfgdfcgdgcdgcghfghfreryrdfgfgfgffgegegffgfcdfdfsdsdsdsa", "jvfhxggxsxgscdgcghdsfgfdfgcfsgcfgdfcgfsdgcfgdfcgdfcgfdgsfghcgdgcgdcgsgcfgdfcgfdgcfgdcfgdfcgdgcfcgdgcdgcghfghfreryrdfgfgfgffgegegffgfcdfdfsdsdsdsadsdzsasdasasasasasasasassasasasasagdeydfyeffdgfgffgdfgffggffgfgsfdhgrtrwyterdtefetrtrtywdrtyrjvfhxggxsxgscdgcghdsfgfdfgcfsgcfgdfcgfsdgcfgdfcgdfcgfdgs", "khxjwugwxgshxfdeydyxf", "jghsgxewsxsvcgfdgcfhfhfgcfdgcfdgcfdgcfgdfgcdgcgdfcdgcfdgcgdfcgdfgcdgcf", "jvfhxggxsxgscdgcghdsfgfdfgcfsgcfgdfcgfsdgcfgdfcgdfcgfdgsfghcgdgcgdcgsgcfgdfcgfdgcfgdcfgdfcgdgcgdcgdcfdfcgdcfgdfcgfdgcgdfcgfdgcgdcfgdfcgdgcdgcghfghfreryrdfgfgfgffgegegffgfcdfdfsdsdsdsadsdzsasdasasasasasasasassasasasasagdeydfyeffdgfgffgdfgffggffgfgsfdhgrtrwyterdtefetrtrtywdrtyrjvfhxggxsxgscdgcghdsfgfdfgcfsgcfgdfcgfsdgcfgdfcgdfcgfdgs", "hhh"]
    let array2 = [ "jvfhxggxsxgscdgcghdsfgfdfgcfsgcfgdfcgfsdgcfgdfcgdfcgfdgsfghcgdgcgdcgsgcfgdfcgfdgcfgdcfgdfcgdgcgdcgdcfdfcgdcfgdfcgfdgcgdfcgfdgcgdcfgdfcgdgcdgcghfghfreryrdfgfgfgffgegegffgfcdfdfsdsdsdsa","jvfhxggxsxgscdgcghdsfgfdfgcfsgcfgdfcgfsdgcfgdfcgdfcgfdgsfghcgdgcgdcgsgcfgdfcgfdgcfgdcfgdfcgdgcgdcgdcfdfcgdcfgdfcgfdgcgdfcgfdgcgdcfgdfcgdgcdgcghfghfreryrdfgfgfgffgegegffgfcdfdfsdsdsdsadsdzsasdasasasasasasasassasasasasagdeydfyeffdgfgffgdfgffggffgfgsfdhgrtrwyterdtefetrtrtywdrtyrjvfhxggxsxgscdgcghdsfgfdfgcfsgcfgdfcgfsdgcfgdfcgdfcgfdgs", "hhh", "jvfhxggxsxgscdgcghdsfgfdfgcfsgcfgdfcgfsdgcfgdfcgdfcgfdgsfghcgdgcgdcgsgcfgdfcgfdgcfgdcfgdfcgdgcfcgdgcdgcghfghfreryrdfgfgfgffgegegffgfcdfdfsdsdsdsadsdzsasdasasasasasasasassasasasasagdeydfyeffdgfgffgdfgffggffgfgsfdhgrtrwyterdtefetrtrtywdrtyrjvfhxggxsxgscdgcghdsfgfdfgcfsgcfgdfcgfsdgcfgdfcgdfcgfdgs", "khxjwugwxgshxfdeydyxf", "jghsgxewsxsvcgfdgcfhfhfgcfdgcfdgcfdgcfgdfgcdgcgdfcdgcfdgcgdfcgdfgcdgcf", "jvfhxggxsxgscdgcghdsfgfdfgcfsgcfgdfcgfsdgcfgdfcgdfcgfdgsfghcgdgcgdcgsgcfgdfcgfdgcfgdcfgdfcgdgcgdcgdcfdfcgdcfgdfcgfdgcgdfcgfdgcgdcfgdfcgdgcdgcghfghfreryrdfgfgfgffgegegffgfcdfdfsdsdsdsadsdzsasdasasasasasasasassasasasasagdeydfyeffdgfgffgdfgffggffgfgsfdhgrtrwyterdtefetrtrtywdrtyrjvfhxggxsxgscdgcghdsfgfdfgcfsgcfgdfcgfsdgcfgdfcgdfcgfdgs"]

    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
   
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell") as! TableViewCell
        cell.titleOfFirst = array[indexPath.row]
        cell.titleOfSecond = array2[indexPath.row]
        return cell
        
    }
    
    
    // set height of tableView
    override func viewWillLayoutSubviews() {
        super.updateViewConstraints()
        heightOfTable.constant = tableOutlet.contentSize.height
    }
    
    //number of rows in table
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
  
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        self.viewWillLayoutSubviews()
    }
}

