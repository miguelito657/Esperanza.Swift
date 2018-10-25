//
//  ViewController.swift
//  Esperanza
//
//  Created by Estudiante on 25/10/18.
//  Copyright © 2018 Estudiante. All rights reserved.
//

import UIKit
import AVKit

class ViewController: UIViewController {

    @IBOutlet weak var playBtn: UIButton!
    var radioUrl : String = ""
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func playAct(_ sender: Any) {
        loadRadioUrl()
        let _url = NSURL.init(string: radioUrl);
        print("Init url")

        var player : AVPlayer!;
        print("Init empty AVPLayer")

        player = AVPlayer.init(url: _url! as URL)
        player.volume=2.0;
        print("Setted volume")

        player.play();
        
        
    }
    
    func loadRadioUrl(){
        radioUrl = "http://server7.servistreaming.com:10003/stream?type=.mp3";
        print("Loaded radio url")
    }
}

