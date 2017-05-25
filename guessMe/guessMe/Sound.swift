//
//  Sound.swift
//  guessMe
//
//  Created by Dayakar Reddy Marri on 5/25/17.
//  Copyright © 2017 dhaya. All rights reserved.
//

import Foundation
import AVFoundation



var audioPlayer1 = AVAudioPlayer()
func playSoundWhenCorrect() {
    
    let alertSound = NSURL(fileURLWithPath: Bundle.main.path(forResource: "correct", ofType: "mp3")!)
    
    do {
        try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
    } catch{
    }
    do {
        try AVAudioSession.sharedInstance().setActive(true)
    } catch{
    }
    
    // Play the sound
    do {
        audioPlayer1 = try AVAudioPlayer(contentsOf: alertSound as URL)
    } catch {
    }
    
    audioPlayer1.prepareToPlay()
    audioPlayer1.play()
}

var audioPlayer2 = AVAudioPlayer()
func playSoundWhenWrong() {
    
    let alertSound = NSURL(fileURLWithPath: Bundle.main.path(forResource: "wrong", ofType: "mp3")!)
    
    do {
        try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
    } catch{
    }
    do {
        try AVAudioSession.sharedInstance().setActive(true)
    } catch{
    }
    
    // Play the sound
    do {
        audioPlayer2 = try AVAudioPlayer(contentsOf: alertSound as URL)
    } catch {
    }
    
    audioPlayer2.prepareToPlay()
    audioPlayer2.play()
}





