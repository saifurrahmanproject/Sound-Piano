//
//  ViewController.swift
//  Sound Piano
//
//  Created by Tonoy Rahman on 2020-10-04.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func pianoKey(_ sender: UIButton) {
        
        playSound(soundName: sender.currentTitle!)
    }
    
    func playSound(soundName: String) {
        guard let url = Bundle.main.url(forResource: soundName, withExtension: "wav") else { return }

        do {
            try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
            try AVAudioSession.sharedInstance().setActive(true)

          
            player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)

      

            guard let player = player else { return }

            player.play()
            


        } catch let error {
            print(error.localizedDescription)
        }
    }
    
    
    func allSound(forRes: String) {
        
        
    }
    
}

