//
//  DependencyDoStuff.swift
//  DependencyTest
//
//  Created by Dean Wagstaff on 11/2/20.
//

import Foundation
import Alamofire
import MBProgressHUD

public class DoSomethingViewController: UIViewController {
    
    public override func viewDidLoad() {
        loadFlavors()
    }
    
    private func loadFlavors() {
        
        showLoadingHUD()
        
        Alamofire.request("https://www.raywenderlich.com/downloads/Flavors.plist",
                          encoding: PropertyListEncoding.xml)
            .responsePropertyList { [weak self] (response) -> Void in
                
                guard let self = self else {
                    return
                }
                
                self.hideLoadingHUD()
                
                let flavorsArray: [[String : String]]
                
                switch response.result {
                case .success(let array):
                    flavorsArray = array as? [[String : String]] ?? []
                case .failure(_):
                    print("Couldn't download flavors!")
                    return
                }
                
              //  self.flavors = flavorsArray.compactMap(Flavor.init(dictionary:))
               // self.collectionView.reloadData()
               // self.selectFirstFlavor()
            }
    }
    
    private func showLoadingHUD() {
        let hud = MBProgressHUD.showAdded(to: self.view, animated: true)
        hud.label.text = "Loading..."
    }
    
    private func hideLoadingHUD() {
        MBProgressHUD.hide(for: self.view, animated: true)
    }
}
