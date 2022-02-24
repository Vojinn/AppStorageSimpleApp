//
//  AudioPlayer.swift
//  Restart
//
//  Created by Dusan Vojinovic on 24.2.22..
//

import Foundation
import AVFoundation

var audioPlayer: AVAudioPlayer?

// naziv i tip 2 Stringa
func playSound(sound: String, type: String) {
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
        } catch {
            print("Could not play the sound file.")
        }
    }
}
