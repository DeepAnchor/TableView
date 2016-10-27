//
//  ViewController.swift
//  TableView
//
//  Created by Carlos Butron on 02/12/14.
//  Copyright (c) 2014 Carlos Butron.
//

import UIKit
import UICircularProgressRing

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    //Number of rows
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
            
    //DetailCells
    func tableView(_ tableView: UITableView, cellForRowAt indexPath:
        IndexPath) -> UITableViewCell{
        
        let progressRing = UICircularProgressRingView(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
        
        progressRing.setProgress(39, animationDuration: 2.0) {
            print("Done animating!")
        }
        progressRing.innerRingWidth = 3
        progressRing.innerRingColor = UIColor.white
        progressRing.outerRingWidth = 5
        
            let cell:UITableViewCell = UITableViewCell(style:
                UITableViewCellStyle.subtitle, reuseIdentifier: nil)
            cell.contentView.addSubview(progressRing)

        
            return cell
    }
    
    //Title
    func tableView(_ tableView: UITableView, titleForHeaderInSection section:
        Int) -> String?{
            return "Head"
    }
    
    //Foot Subtitle
    func tableView(_ tableView: UITableView, titleForFooterInSection section:
        Int) -> String?{
            return "Foot"
    }
    
}
