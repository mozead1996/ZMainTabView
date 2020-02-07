//
//  MainTabViewDataSource.swift
//  MainTabViewDemoProject
//
//  Created by Mac on 2/3/20.
//  Copyright © 2020 spark-cloud. All rights reserved.
//

import Foundation
import UIKit

public protocol MainTabViewDataSource{
    var viewController : UIViewController{get}
    func viewControllersToBeHosted(in MainTabView : MainTabView ) -> [TabItem]
}

public extension MainTabViewDataSource where Self : UIViewController{
    var viewController : UIViewController{
        return self
    }
}


public protocol TabItem {
    var tabTitle : String?{get set}
    var viewController : UIViewController?{get}
}

public extension TabItem where Self : UIViewController{
    
    var viewController : UIViewController?{
        return self
    }
    
    
}
