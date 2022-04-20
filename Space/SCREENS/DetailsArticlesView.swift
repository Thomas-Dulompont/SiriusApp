//
//  DetailsArticlesView.swift
//  Space
//
//  Created by David Bonvin on 25/03/2022.
//

import SwiftUI

struct DetailsArticlesView: View {
    
    @State var article : Articles
    
    var favoriteIcon: String {
        article.isFavorite ? "heart.fill" : "heart"
    }
    
    func changeFavorite() {
        if article.isFavorite == false {
            article.isFavorite = true
        } else {
            article.isFavorite = false
        }
    }
    
    var body: some View {
            VStack {
                
                //ARTICLE
                ArticleView(article: article)
                
                // TITRE ARTICLE
                .navigationTitle(article.title)
                .navigationBarTitleDisplayMode(.inline)
                
                
                .toolbar {
                // PARTAGE
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        print("share")
                    }, label: {
                        Image(systemName: "square.and.arrow.up")
                    })
                }
                    
                // FAVORIS
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        changeFavorite()
                    }, label: {
                        Image(systemName: favoriteIcon)
                    })
                }
            }
        }
    }
}

struct DetailsArticlesView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsArticlesView(article:
                                Articles(
                                              title: "Article",
                                              subtitle: "Quand on regarde le ciel, on regarde dans le passé",
                                              content:
                                      """

                                      Par exemple, le Soleil se trouve à 8 minutes lumière de la Terre, donc regarder le soleil c’est regarder 8 minutes dans le passé. Une triste époque où vous ne connaissiez même pas encore ce top. Certaines étoiles dans le ciel sont peut-être mortes il y a très longtemps, comme la petite vieille que vous avez aidée à traverser la rue un jour.

                                      """,
                                              reference: "TOPITO",
                                              url: "https://www.topito.com/top-trucs-cools-univers",
                                              image: "article1",
                                              isFavorite: true)
        )
    }
}

// STRUCTURE ARTICLE
struct ArticleView: View {
    var article: Articles
    var body: some View {
        
        ScrollView {
        Image(article.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 250, height: 250, alignment: .center)
                .clipped()
                .cornerRadius(15)
                .padding()
        
            Text(article.subtitle)
                .italic()
                .font(.title2)
                .multilineTextAlignment(.center)
            .padding(.top)
           
                
            Text(article.content)
                .padding()
                .multilineTextAlignment(.leading)
            HStack {
                Text("Ref.")
                Link(article.reference, destination: URL(string: article.url)!)
            }
            .padding()
            .font(.callout)
            
        }
        .preferredColorScheme(.dark)
    
    }
}
