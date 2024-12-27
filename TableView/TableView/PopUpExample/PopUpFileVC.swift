//
//  PopUpFileVC.swift
//  TableView
//
//  Created by HTET PHYO OO on 2024/12/27.
//  Copyright © 2024 Bilal ARSLAN. All rights reserved.
//

import UIKit

class PopUpFileVC: UIViewController {
    var cancelHandler: (() -> Void)?
    var okHandler: ((_ paraString: String) -> Void)?

    @IBOutlet weak var lblTitle: UILabel!
    var setDataString = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        print(setDataString)
        lblTitle.text = setDataString
    }

    @IBAction func cancelAction(_ sender: Any) {
        cancelHandler?()
    }
    
    @IBAction func DoneAction(_ sender: Any) {
        self.okHandler?("PrameterString")
    }
    
}
//
//extension PopUpFileVC : PopupContentVC {
//    func sizeForPopup(_ popupController: PopupController, size: CGSize, showingKeyboard: Bool) -> CGSize {
//        return CGSize(width: UIScreen.main.bounds.width * 0.8, height: 370)
//    }
//}

