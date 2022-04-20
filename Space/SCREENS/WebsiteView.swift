//
//  WebsiteView.swift
//  Space
//
//  Created by Christelle MORO on 28/03/2022.
//

import SwiftUI

struct WebsiteView: View {
    
    @State var article : Lieux
    @State var isFavorite: Bool = false
    var favoriteIcon: String {
        article.isFavorite ? "heart.fill" : "heart"
    }
    
    var body: some View {
        VStack {
            ScrollView {
                Image(article.image)
                    .resizable()
                    .scaledToFit()
                
                Text(article.title)
                    .italic()
                    .font(.title2)
                    .padding(.top)
                
                
                Text(article.area)
                    .padding()
                    .multilineTextAlignment(.leading)
                HStack {
                    Text("Ref.\(article.url)")
                    //                       Link(article.url, destination: URL(string: article.url)!)
                }
                .padding()
                .font(.callout)
                
            }
            .preferredColorScheme(.dark)
            
            // TITRE ARTICLE
            .navigationTitle("Lieux Cultes")
            .navigationBarTitleDisplayMode(.inline)
            
            
            .toolbar {
                // PARTAGE
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        print("test")
                    }, label: {
                        Image(systemName: "square.and.arrow.up")
                    })
                }
            }
        }
    }
}

struct WebsiteView_Previews: PreviewProvider {
    static var previews: some View {
        WebsiteView(article:  Lieux(title: "FUTUROSCOPE :", subtitle: "", content: "", url: "https://www.futuroscope.com/ -", area: "CHASSENEUIL du POITOU (86)", image: "Futuroscope" , isFavorite: false)
        )
    }
}
