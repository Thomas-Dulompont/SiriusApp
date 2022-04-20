//
//  PodcastsLists.swift
//  Space
//
//  Created by David Bonvin on 24/03/2022.
//

import SwiftUI

struct PodcastsLists: View {
    @State var isBtnson = false
    var body: some View {
        VStack (alignment: .leading){
            Spacer()
            HStack{
                ExtracBtnPodscats()
                Text("Sirius ")
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
                Spacer()
                VStack{
                    ForEach(podcastsListAudio) { mp3 in
                        NavigationLink(destination: buo(articleAudio: mp3), label: {
                            PodcatsRow(element: mp3.title)
                                .frame(width: 400, height: 70)
                                .padding(.bottom, 10)
                        })
                    }
                }
            }
            
            Spacer()
        }
        .navigationTitle("Audio podcats")
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
struct PodcastsLists_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            PodcastsLists()
        }
    }
}
struct ExtracBtnPodscats: View {
    var body: some View {
        ZStack{
            Rectangle()
                .frame(width: 114, height: 100)
                .foregroundColor(Color(red: 0.11, green: 0.11, blue: 0.123))
                .cornerRadius(10.0)
                .padding(.leading,25)
            
            Image(systemName: "antenna.radiowaves.left.and.right.circle.fill")
                .font(.system(size: 60))
                .padding()
                .padding(.leading,25)
                .foregroundColor(.white)
        }
        .preferredColorScheme(.dark)
    }
}
struct PodcatsRow: View {
    var element: String
    var body: some View{
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
                    Text(element)
                        .padding(.bottom, 10)
                        .font(.body)
                        .foregroundColor(.white)
                }
                .padding(.trailing, 30)
                .padding(.leading, 10)
                Spacer()
                Image (systemName: "chevron.forward")
                    .foregroundColor(.white)
                    .padding(.bottom, 40)
                    .padding(.trailing,7)
            }
        }
        .padding()
    }
}
