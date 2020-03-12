//
//  SpeechText.swift
//  LynnKit
//
//  Created by 王旭超 on 2020/3/12.
//  Copyright © 2020 Rudaor. All rights reserved.
//

import Foundation
import AVFoundation

func SpeechStringText(string: String, language: String) {
    
    let utterance = AVSpeechUtterance(string: string)
    utterance.rate = 0.5
    utterance.volume = 1
    let voice = AVSpeechSynthesisVoice(language: language)
    utterance.voice = voice
    let avSpeaker = AVSpeechSynthesizer()
    
    avSpeaker.speak(utterance)
    
}
