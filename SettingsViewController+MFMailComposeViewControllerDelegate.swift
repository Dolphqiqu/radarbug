//
//  SettingsViewController+MFMailComposeViewControllerDelegate.swift

//
//  Created by Ethanhuang on 2018/6/23.
//  Copyright © 2018年 Elaborapp Co., Ltd. All rights reserved.
//

import UIKit
import MessageUI

@available(iOS 11.0, *)
extension SettingsViewController: MFMailComposeViewControllerDelegate {
    func presentFeedbackMailComposer() {
        guard MFMailComposeViewController.canSendMail() else {
            let alertController = UIAlertController(title: "Setup iOS Mail".localized(), message: "Setup iOS Mail accounts first, or...".localized(), preferredStyle: .alert)
            alertController.addAction(UIAlertAction(title: "OK".localized(), style: .cancel, handler: nil))
            self.present(alertController, animated: true, completion: nil)
            return
        }
        let vc = MFMailComposeViewController()
        vc.setToRecipients([AppConstants.feedbackEmail])
        vc.setSubject("[Radarbug Feedback]")
        vc.setMessageBody("Hello Developer,\n\n\n\n\n\n\(AppConstants.aboutString)", isHTML: false)
        vc.mailComposeDelegate = self
        self.present(vc, animated: true, completion: { })
    }

    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        controller.dismiss(animated: true) { }
    }
}
