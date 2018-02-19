//
//  ViewController.swift
//  VideoPlayerApp
//
//  Created by Paul Lam on 2018-01-06.
//  Copyright © 2018 Paul Lam. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController {
    @IBOutlet weak var playerView: UIView!
    var player: AVPlayer!
    var playerLayer: AVPlayerLayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initPlayer()
    }
    
    func initPlayer() {
        let videoUrl = URL(string: "https://clips.vorwaerts-gmbh.de/big_buck_bunny.mp4")
        player = AVPlayer(url: videoUrl!)
        playerLayer = AVPlayerLayer(player: player)
        playerView.layer.addSublayer(playerLayer)
    }
    
    override func viewDidLayoutSubviews() {
        playerLayer.frame = playerView.bounds
    }
    
    @IBAction func play(_ sender: Any) {
        player.play()
    }
    
    @IBAction func stop(_ sender: Any) {
        player.pause()
    }
    
    @IBAction func retry(_ sender: Any) {
        player.seek(to: kCMTimeZero)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

