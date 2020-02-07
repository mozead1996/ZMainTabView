# ZMainTabView

#### A library for creating customizable top menu 

 ![MainTabViewGIF](https://github.com/mozead1996/ZMainTabView/blob/master/mainTabViewImage.gif)




### Install (not published yet): 
1. download files 
1. drage mainTabView Folder in your project add it in your target 


### Usage : 
1. in the hosting controller add UIView and set its class to ZMainTabView
1. drag outlet of mainTabView 
1. import ZMainTabView
1. set dataSource to self 

### code snipts :

```swift

import ZMainTabView


    @IBOutlet weak var mainTabView: MainTabView?

 class ViewController : UIViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        mainTabView?.dataSource = self
    }
}

//here we give it our viewControllers to show 

extension ViewController : MainTabViewDataSource{
    
    func viewControllersToBeHosted(in MainTabView: MainTabView) -> [TabItem] {
        let firstVC = instance(FirstViewController.self)//FirstViewController.instance()
        let secondVC = instance(SecondViewController.self)
        let thirdVC = instance(ThirdViewController.self)
        
        return [firstVC,secondVC,thirdVC]
    }
 }
 
```
