//
//  YouViewController.swift
//  douyinshow
//
//  Created by fuyuan on 2018/7/19.
//  Copyright © 2018年 fuyuan. All rights reserved.
//

import UIKit

class YouViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var tableview: UITableView!
    let cellHeight:CGFloat = 50.0;
    let cellID = "youCellID"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableview.register(UINib.init(nibName: "YouTableViewCell", bundle: nil), forCellReuseIdentifier: cellID)
        let index = cellID.index(cellID.startIndex, offsetBy: 4)
        let index2 = cellID.index(cellID.startIndex, offsetBy: 6);
        let str = String(cellID[index..<index2])
        print(str)
        
        // Do any additional setup after loading the view.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return cellHeight
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:YouTableViewCell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath) as! YouTableViewCell
        return cell
        
    }


}
