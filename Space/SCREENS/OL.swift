//
//  OL.swift
//  Space
//
//  Created by David Bonvin on 29/03/2022.
//

import SwiftUI

struct OL: View {
   @State var audioss : PodcastsListAudio
    @State private var searchString = ""
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading) {
                    // ACTUS SECTION
                    Text("Articles")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .padding()
                    ScrollView(.horizontal) {
                        HStack{
                            ForEach(articles) { article in
                                NavigationLink(destination: DetailsArticlesView(article: article), label: {
                                        ArticlessRows(articles:article)
                                })
                            }
                        }
                    }
                    
                    // PODCAST SECTION
                    Text("Podcast")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .padding()
                    ScrollView(.horizontal) {
                        HStack{
                            ForEach(podcastsListAudio) { articless in
                                NavigationLink(destination: PodcastsLists(), label: {
                                    PodcastRows(audioss:articless)
                                })
                            }
                        }
                    }
                    
                    // LIEUX CULTES SECTION
                    Text("Lieux cultes")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .padding()
                    ScrollView(.horizontal) {
                        HStack{
                            
                            ForEach(lieu) { article in
                                NavigationLink(destination: WebsiteView(article: article), label: {
                                    LieuxRow(lieux :article)
                                })
                            }
                        }
                    }
                    
                    // EXEMPLE SECTION
//                    Text("Articles")
//                        .font(.largeTitle)
//                        .fontWeight(.bold)
//                        .foregroundColor(Color.white)
//                        .padding()
//                    ScrollView(.horizontal) {
//                        HStack{
//                            ForEach(articles) { article in
//                                NavigationLink(destination: DetailsArticlesView(article: article), label: {
//                                        ArticlesRow(articles:article)
//                                })
//                            }
//                        }
//                    }
                    
                }
            }
            .navigationTitle("Actualités")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                
                // NOTIFICATIONS
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        print("test")
                    }, label: {
                        Image(systemName: "bell")
                    })
                }
            }
        }
    }
}

struct OL_Previews: PreviewProvider {
    static var previews: some View {
        OL(audioss: PodcastsListAudio(title: "Voyages dans l'espace", subtitle: "Virgin Galactic", Episode: "1", imagen: "Voyages", buosons: audiosPodcast4, imagenPodcast: "a15" ))
    }
}

struct ArticlessRows: View {
    var articles: Articles
    var body: some View {
        ZStack{
            Image(articles.image)
                .resizable()
                .scaledToFit()
                .frame(width: 175, height: 175)
                .cornerRadius(25)
                .padding()
        }.font(.title)
    }
}
struct LieuxRow: View{
    var lieux : Lieux
    var body: some View{
        ZStack{
            Image(lieux.image)
                .resizable()
                .scaledToFit()
                .frame(width: 175, height: 175)
                .cornerRadius(25)
                .padding()
        }.font(.title)
    }
}
struct PodcastRows: View{
    var audioss : PodcastsListAudio
    var body: some View{
        ZStack{
            Image(audioss.imagen)
            .resizable()
            .scaledToFit()
            .frame(width: 175, height: 175)
            .cornerRadius(25)
            .padding()
        }.font(.title)
    }
}
