//
//  PopUpFileVC2.swift
//  TableView
//
//  Created by HTET PHYO OO on 2024/12/27.
//  Copyright © 2024 Bilal ARSLAN. All rights reserved.
//

import UIKit

class PopUpFileVC2: UIViewController {

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
