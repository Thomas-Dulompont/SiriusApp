//
//  buo.swift
//  Space
//
//  Created by David Bonvin on 28/03/2022.
//

import SwiftUI
import AVKit

struct buo: View {
    @State var audioPlayer: AVAudioPlayer!
    @State var isBtnson = false
    @State var articleAudio : PodcastsListAudio
    var selectedTheme: [BuoSons] {
        switch articleAudio.title {
        case "Univers":
            return audiosPodcast1
        case "Mars":
            return audiosPodcast2
        case "la matiere noir":
            return audiosPodcast3
        default:
            return audiosPodcast2
        }
    }
    var isPause : Bool = false
    var isPlay : Bool = false
    var iconPause : String {
        isPause ? "pause.fill" : "pause"
    }
    var iconPlay : String {
        isPlay ? "play.fill" : "play"
    }
    var body: some View {
        VStack(alignment: .leading){
            Spacer()
            HStack{
                ExtracBtnPodscats()
                Text("Sirius Podcast")
                    .font(.title)
                    .fontWeight(.medium)
                    .padding(.bottom, 60)
                    .padding(.leading)
            }
            HStack(){
                Toggle(isOn: $isBtnson, label: {
                    Text ("Tous les épisodes")
                        .font(.title2)
                        .fontWeight(.medium)
                        .padding(.leading, 20)
                        .padding(.trailing, 40)
                    Image(systemName: "shuffle.circle.fill")
                        .padding(.leading)
                        .font(.largeTitle)
                })
                    .padding()
            }
            ScrollView {
                ForEach(articleAudio.buosons) { piste in
                    NavigationLink(destination: PlayPosdcats(mp3: piste), label: {
                        BtnAudio(piste: piste)
                    })
                }
            }
        }
        .navigationTitle("Episodes")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button(action: {
                    print("test")
                }, label: {
                    Image(systemName: "wave.3.right.circle.fill")
                })
            }
        }
    }
}
struct buo_Previews: PreviewProvider {
    static var previews: some View {
        //buo(articleAudio: podcastsListAudio.randomElement()!
        buo(articleAudio: podcastsListAudio [1]
        )
    }
}
struct BtnAudio: View {
    @State var audioPlayer: AVAudioPlayer!
    var piste : BuoSons
    var isPause : Bool = false
    var isPlay : Bool = false
    var iconPause : String {
        isPause ? "pause.fill" : "pause"
    }
    var iconPlay : String {
        isPlay ? "play.fill" : "play"
    }
    var body: some View{
        VStack {
            ZStack{
                Rectangle ()
                    .frame(width: 380, height: 80)
                    .foregroundColor(Color(red: 0.11, green: 0.11, blue: 0.123))
                    .cornerRadius(10.0)
                HStack{
                    Image (systemName: "waveform")
                        .padding()
                        .font(.largeTitle)
                        .foregroundColor(.white)
                    VStack(alignment: .leading){
                        Text(piste.title)
                            .padding(.bottom, 10)
                            .font(.body)
                            .foregroundColor(.white)
                        Text("Episode: \(piste.Episode)")
                            .foregroundColor(.white)
                            .font(.footnote)
                    }
                    .padding(.trailing, 30)
                    .padding(.leading, 10)
                    Spacer()
                    Button{
                        self.audioPlayer.pause()
                    } label: {
                        Image (systemName: iconPause)
                            .foregroundColor(isPause ? .blue : .white)
                            .padding()
                            .padding(.trailing,10)
                    }
                    Button {
                        self.audioPlayer.play()
                    } label: {
                        Image (systemName: iconPlay)
                            .foregroundColor(isPause ? .blue : .white)
                            .padding()
                            .padding(.trailing,10)
                    }
                }
            }
        }
    }
}
