

import Foundation
import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var prepTime: UILabel!
    
    var recipe: Recipe?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let recipe = recipe {
            navigationItem.title = recipe.name
            imageView.image = UIImage(named: recipe.thumbnails)
            nameLabel.text = recipe.name
            prepTime.text = "Prep Time: " + recipe.prepTime
        }
    }
    @IBAction func popupAction(_ sender: Any) {
        let isPopUp = false

        if isPopUp{
            self.canPopUpVCOneFunction()
        }else{
            self.canPopUpVCTwoFunction()
        }
        
        let txtPopUp = "One"
        if txtPopUp == "One"{
            self.canPopUpVCOneFunction()
        }else{
            self.canPopUpVCTwoFunction()
        }
//        let popOverContent = PopUpFileVC()
//        popOverContent.setDataString = "TestData String"
//        let popup = PopupController
//            .create(self)
//            .customize(
//                [
//                    .animation(.slideUp),
//                    .scrollable(false),
//                    .backgroundStyle(.blackFilter(alpha: 0.7))
//                ]
//            )
//            .didShowHandler { popup in
//            }
//            .didCloseHandler { popup in
//            }
//        
//        popOverContent.okHandler = { [weak self] parameterStr in
//            if parameterStr != ""{
//                print(parameterStr)
//            }
//            popup.dismiss()
//        }
//        popOverContent.cancelHandler = { popup.dismiss()}
//        popup.show(popOverContent)
    }
    
    func canPopUpVCOneFunction(){
        //        if let popUpVC = storyboard?.instantiateViewController(withIdentifier: "PopUpFileVC") as? PopUpFileVC { //Storyboard Call
        
        let popUpVC = PopUpFileVC() // XIB call
        popUpVC.setDataString = "Hello, this is a popup!"
        // Set the closure handlers for ok and cancel actions
        popUpVC.cancelHandler = {
            popUpVC.dismiss(animated: true, completion: nil)
        }
        popUpVC.okHandler = { parameter in
            // Handle done action, and get the parameter string
            print("Done action called with parameter: \(parameter)")
            popUpVC.dismiss(animated: true, completion: nil)
        }
        self.present(popUpVC, animated: true)
    }
    
    
    func canPopUpVCTwoFunction(){
        if let popUpVC = storyboard?.instantiateViewController(withIdentifier: "PopUpStoryboard") as? PopUpFileVC2 { //Storyboard Call
            
            let popUpVC = PopUpFileVC() // XIB call
            popUpVC.setDataString = "Hello, this is a popup!"
            // Set the closure handlers for ok and cancel actions
            popUpVC.cancelHandler = {
                popUpVC.dismiss(animated: true, completion: nil)
            }
            popUpVC.okHandler = { parameter in
                // Handle done action, and get the parameter string
                print("Done action called with parameter: \(parameter)")
                popUpVC.dismiss(animated: true, completion: nil)
            }
            self.present(popUpVC, animated: true)
        }
    }
}

