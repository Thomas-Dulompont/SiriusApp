//
//  ActusHomeView.swift
//  Space
//
//  Created by David Bonvin on 25/03/2022.
//

import SwiftUI

struct ActusHomeView: View {
    
    @State private var searchString = ""
    @State var audioss : PodcastsListAudio
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading) {
                    
                    // ACTUS SECTION
                    Title(titleText: "Articles")
                    
                    ScrollView(.horizontal) {
                        HStack{
                            ForEach(articles) { article in
                                NavigationLink(destination: DetailsArticlesView(article: article), label: {
                                        CardPreviewArticle(articles:article)
                                })
                            }
                        }
                    }
                    
                    // PODCAST SECTION
                    Title(titleText: "Podcast")
                    
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
                    Title(titleText: "Lieux Cultes")
                    
                    ScrollView(.horizontal) {
                        HStack{
                            
                            ForEach(lieu) { lieu in
                                NavigationLink(destination: DetailsLocationsView(lieu: lieu), label: {
                                    CardPreviewLocation(lieux:lieu)
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
//                                NavigationLink(destination: DetailsArticlesView(article:                                      article), label: {
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

struct ActusHomeView_Previews: PreviewProvider {
    static var previews: some View {
        ActusHomeView(audioss: PodcastsListAudio(title: "Voyages dans l'espace", subtitle: "Virgin Galactic", Episode: "1", imagen: "Voyages", buosons: audiosPodcast4, imagenPodcast: "a15"))
    }
}

// STRUCTURE TITLE (TITRE SECTION)
struct Title: View {
    var titleText: String
    var body: some View {
        Text(titleText)
            .font(.largeTitle)
            .fontWeight(.bold)
            .foregroundColor(Color.white)
            .padding()
    }
}

// STRUCTURE CARDPREVIEW (CARTE AVEC IMG)
struct CardPreviewArticle: View {
    var articles: Articles
    var body: some View {
        ZStack{
            Image(articles.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 200, height: 200, alignment: .center)
                .clipped()
                .cornerRadius(15)
                .padding()
        }.font(.title)
    }
}

// STRUCTURE CARDPREVIEW (CARTE AVEC IMG)
struct CardPreviewLocation: View {
    var lieux: Lieux
    var body: some View {
        ZStack{
            Image(lieux.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 200, height: 200, alignment: .center)
                .clipped()
                .cornerRadius(15)
                .padding()
        }.font(.title)
    }
}
// Podcasts
struct PodcastRows1: View{
    var audioss : PodcastsListAudio
    var body: some View{
        ZStack{
            Image(audioss.imagen)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 200, height: 200, alignment: .center)
            .clipped()
            .cornerRadius(15)
            .padding()
        }.font(.title)
    }
}
