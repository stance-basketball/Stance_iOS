//
//  MainTabController.swift
//  Stance_Project
//
//  Created by 차유민 on 6/17/24.
//

import UIKit

class MainTabController: UITabBarController {
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureViewControllers()
    }
    
    // MARK: - Helpers
    
    func configureViewControllers() {
        
        let schedule = templateNavigationController(unselectedImage: #imageLiteral(resourceName: "date_range"), selectedImage: #imageLiteral(resourceName: "selected_date_range"), rootViewController: ScheduleController())
        
        let pictureViewer = templateNavigationController(unselectedImage: #imageLiteral(resourceName: "photo"), selectedImage: #imageLiteral(resourceName: "selected_photo"), rootViewController: PictureViewerController())
        
        let noticeList = templateNavigationController(unselectedImage: #imageLiteral(resourceName: "article"), selectedImage: #imageLiteral(resourceName: "selected_article"), rootViewController: NoticeListController())
        
        let myPage = templateNavigationController(unselectedImage: #imageLiteral(resourceName: "person"), selectedImage: #imageLiteral(resourceName: "selected_person"), rootViewController: MyPageController())
        
        viewControllers = [schedule, pictureViewer, noticeList, myPage]
        
        
       
    }
    
    func templateNavigationController(unselectedImage: UIImage, selectedImage: UIImage, rootViewController: UIViewController) -> UINavigationController {
        let nav = UINavigationController(rootViewController: rootViewController)
        nav.tabBarItem.image = unselectedImage
        nav.tabBarItem.selectedImage = selectedImage
        nav.navigationBar.tintColor = .black
        return nav
    }
}
