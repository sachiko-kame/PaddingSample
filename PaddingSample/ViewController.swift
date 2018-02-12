//
//  ViewController.swift
//  PaddingSample
//
//  Created by 水野祥子 on 2018/02/12.
//  Copyright © 2018年 sachiko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var myTableView: UITableView = UITableView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        myTableView.frame = self.view.frame
        
        myTableView.dataSource = self
        myTableView.delegate = self
        
//        let viewA = UIView()
//        myTableView.tableFooterView = viewA
//        myTableView.estimatedRowHeight = SampleTableViewCell.height
        
        self.view.addSubview(myTableView)
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}



extension ViewController:UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return SampleTextArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        tableView.register(cellTypes: [SampleTableViewCell.self, SampleTableViewCell.self])
        let cell = tableView.dequeueReusableCell(with: SampleTableViewCell.self, for: indexPath)
        cell.Set(Text:SampleTextArray[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        
       return UITableViewAutomaticDimension
    
    }
 
}

