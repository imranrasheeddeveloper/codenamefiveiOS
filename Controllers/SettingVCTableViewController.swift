//
//  SettingVCTableViewController.swift
//  CodeNameFive
//
//  Created by Muhammad Imran on 10/06/2020.
//  Copyright © 2020 ITRID TECHNOLOGIES LTD. All rights reserved.
//

import UIKit

class SettingVCTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.tableFooterView = UIView()
        
    }
    // MARK: - Table view Delegate
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let currentSection = indexPath.section
        if currentSection == 0{
            if indexPath.row == 0 {
                let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
                let newViewController = storyBoard.instantiateViewController(withIdentifier: "ProfileVC")
                navigationController?.pushViewController(newViewController, animated: true)
            }
        }
        if currentSection == 1{
            if indexPath.row == 0 {
                let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
                let newViewController = storyBoard.instantiateViewController(withIdentifier: "HistoryVC")
                navigationController?.pushViewController(newViewController, animated: true)
            }
        }
        
        if currentSection == 2{
            if indexPath.row == 2 {
                let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
                let newViewController = storyBoard.instantiateViewController(withIdentifier: "EarningsVC")
                navigationController?.pushViewController(newViewController, animated: true)
            }
        }
        
        if currentSection == 3 {
            if indexPath.row == 0 {
                let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
                let newViewController = storyBoard.instantiateViewController(withIdentifier: "HelpCenterVC")
                navigationController?.pushViewController(newViewController, animated: true)
            }
        }
        if currentSection == 4{
            if indexPath.row == 0 {
                let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
                let newViewController = storyBoard.instantiateViewController(withIdentifier: "MapSettingVC")
                navigationController?.pushViewController(newViewController, animated: true)
            }
            if indexPath.row == 1 {
                let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
                let newViewController = storyBoard.instantiateViewController(withIdentifier: "OpeninMapsVC")
                navigationController?.pushViewController(newViewController, animated: true)
            }
        }
        
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 {
            return 100
        }
        else{
            return 45
        }
    }
    override func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        
        let blurEffect = UIBlurEffect(style: .light)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        
        let headerView: UITableViewHeaderFooterView = view as! UITableViewHeaderFooterView
        headerView.textLabel!.textColor = UIColor.darkGray
        headerView.textLabel!.font = UIFont(name: "Roboto-Bold", size: 15)
        //headerView.tintColor = .groupTableViewBackground
        headerView.backgroundView = blurEffectView
        headerView.backgroundColor = UIColor(hex: "#F5F7F6")
        
        // For Header Text Color
        let header = view as! UITableViewHeaderFooterView
        header.textLabel?.textColor = .black
        
    }
    
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
         super.traitCollectionDidChange(previousTraitCollection)

         if #available(iOS 13.0, *) {
             if self.traitCollection.hasDifferentColorAppearance(comparedTo: previousTraitCollection) {
                 if traitCollection.userInterfaceStyle == .dark {
                     print("dark mode")
                 }
                 else {
                     //Light
                 }
             }
         } else {
             // Fallback on earlier versions
         }
     }
}
