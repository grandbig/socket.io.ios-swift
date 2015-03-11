//
//  ViewController.swift
//  SocketIOSample
//
//  Created by 加藤 雄大 on 2015/03/10.
//  Copyright (c) 2015年 grandbig.github.io. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var msgField: UITextField!

    let socket = SocketIOClient(socketURL: "localhost:3000")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Delegateの設定
        self.msgField.delegate = self
        
        // コネクションの接続
        self.socket.connect();
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func textFieldShouldReturn(textField: UITextField) -> Bool {
        // キーボードのreturnを押下するとキーボードが閉じる処理
        self.msgField.resignFirstResponder()
        
        return true
    }
    
    @IBAction func sendMessage(sender: AnyObject) {
        // テキストフィールド内の文字列をWebSocketで送る処理
        var msg = self.msgField.text
        self.socket.emit("chat message", msg)
    }

}

