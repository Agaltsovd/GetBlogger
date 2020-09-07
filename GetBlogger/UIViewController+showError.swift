//
//  UIViewController+showError.swift
//  GetBlogger
//
//  Created by Daniyar Agaltsov on 8/26/20.
//  Copyright © 2020 Agaltsov. All rights reserved.
//

import UIKit

extension UIViewController {
    func showError(with message: String) {
        let alert = UIAlertController(title: "Error!", message: message, preferredStyle: .alert)
        let ok = UIAlertAction(title: "Ok", style: .default, handler: nil)
        alert.addAction(ok)
        present(alert, animated: true, completion: nil)
    }
}


