//
//  ViewController.swift
//  GGVideoPlayer
//
//  Created by user on 27/10/2022.
//

import UIKit
import AVKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let path = Bundle.main.url(forResource: "cinema", withExtension: "m4v") else { return  }
        if segue.identifier == "mySegue" {
            let destination = segue.destination as! AVPlayerViewController
            destination.player = AVPlayer(url: path)
//            destination.player = AVPlayer(url: URL(string: "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4")!)
        }
    }

}

