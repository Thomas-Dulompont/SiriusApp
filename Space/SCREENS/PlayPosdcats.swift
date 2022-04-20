//
//  PlayPosdcats.swift
//  Space
//
//  Created by David Bonvin on 24/03/2022.
//

import SwiftUI
import AVKit

struct PlayPosdcats: View {
    @State var audioPlayer: AVAudioPlayer!
    
    var mp3 : BuoSons
    var body: some View {
        VStack {
            Image(mp3.subtitle)
                .resizable()
                .scaledToFit()
                .padding()
            Text(mp3.title).font(.system(size: 45)).font(.largeTitle)
            Text(mp3.Episode).font(.subheadline)
                .padding(.bottom, 40)
            HStack {
                Spacer()
                Button(action: {
                    self.audioPlayer.play()
                })
                {
                    Image(systemName: "play.circle.fill").resizable()
                        .frame(width: 50, height: 50)
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(.white)
                }
                Spacer()
                Button(action: {
                    self.audioPlayer.pause()
                }) {
                    Image(systemName: "pause.circle.fill").resizable()
                        .frame(width: 50, height: 50)
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(.white)
                }
                Spacer()
            }
        }
        .onAppear {
            let sound = Bundle.main.path(forResource: mp3.audioMp3, ofType: "mp3")
            self.audioPlayer = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
        }
        .navigationTitle("Sirius Podcats")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button(action: {
                    print("test")
                }, label: {
                    Image(systemName: "wave.3.right.circle")
                })
            }
        }
    }
}

struct PlayPosdcats_Previews: PreviewProvider {
    static var previews: some View {
        PlayPosdcats(mp3: audiosPodcast1[1])
    }
}



