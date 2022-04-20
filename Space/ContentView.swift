//
//  ContentView.swift
//  Space
//
//  Created by David Bonvin on 22/03/2022.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        HStack{
            ExtraTABView()
                }
        
            }
        }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().preferredColorScheme(.dark)
    }
}

struct ExtraTABView: View {
    var body: some View {
        TabView {
            UniversView()
                .tabItem {
                    Label("Univers", systemImage: "globe.americas")
                }
            ActusHomeView(audioss: PodcastsListAudio(title: "Voyages dans l'espace", subtitle: "Virgin Galactic", Episode: "1", imagen: "Voyages", buosons: audiosPodcast4, imagenPodcast: "a13"))
                .tabItem {
                    Label("Actualité", systemImage: "megaphone")
                }
            ListQuizz()
                .tabItem {
                    Label("Quiz", systemImage: "questionmark.square")
                }
            ProfilPage()
                .tabItem {
                    Label("Profil", systemImage: "person")
                }
        }
        
    }
}
