//
//  ViewController.swift
//  ChatbotTestApp
//
//  Created by Igor Androsov on 6/14/19.
//  Copyright © 2019 Igor Androsov. All rights reserved.
//

import UIKit
import ServiceChat

class ViewController: UIViewController {
    
    let POD = "d.la3-c1-ia2.salesforceliveagent.com"
    let ORG_ID = "00D4P000000zZs1"
    let DEPLOYMENT_ID = "5724P000000LR7W"
    let BUTTON_ID = "5734P000000LSUe"
    var chatConfig: SCSChatConfiguration?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        chatConfig = SCSChatConfiguration(liveAgentPod: POD,
                                          orgId: ORG_ID,
                                          deploymentId: DEPLOYMENT_ID,
                                          buttonId: BUTTON_ID)
    }

    @IBAction func chatButtonTapped(_ sender: Any) {
        ServiceCloud.shared().chatUI.showChat(with: chatConfig!)
    }
    
}

