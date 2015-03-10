//
//  ViewController.swift
//  SocketIOSample
//
//  Created by 加藤 雄大 on 2015/03/10.
//  Copyright (c) 2015年 grandbig.github.io. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let socket = SocketIOClient(socketURL: "172.20.10.5:3000")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // コネクションの接続
        self.socket.connect();
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

