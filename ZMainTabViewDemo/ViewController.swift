//
//  ViewController.swift
//  MainTabViewDemoProject
//
//  Created by Mac on 2/3/20.
//  Copyright © 2020 spark-cloud. All rights reserved.
//

import UIKit
import ZMainTabView

class ViewController: UIViewController  {
    
    
    @IBOutlet weak var mainTabView: MainTabView?

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        mainTabView?.dataSource = self
    }
    
    
}


extension ViewController : MainTabViewDataSource{
    
    func viewControllersToBeHosted(in MainTabView: MainTabView) -> [TabItem] {
        let firstVC = instance(FirstViewController.self)//FirstViewController.instance()
        let secondVC = instance(SecondViewController.self)
        let thirdVC = instance(ThirdViewController.self)
        
        return [firstVC,secondVC,thirdVC]
    }
    
    
}



extension UIViewController{
    
   
    
    
    func instance<T: UIViewController>(_ type : T.Type)->T{
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let vc = storyboard.instantiateViewController(withIdentifier: identifier(type: T.self))
        return vc as! T
    }
    
    func identifier(type : UIViewController.Type)->String{
        return String(describing: type)
    }
}
