//
//  DetailsLocationsView.swift
//  Space
//
//  Created by David Bonvin on 30/03/2022.
//

import SwiftUI

struct DetailsLocationsView: View {
    
@State var lieu: Lieux
    
    var body: some View {
       
            
            //LIEU
//            LieuView(lieu: lieu)
            ScrollView {
                VStack {
            Image(lieu.image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 250, height: 250, alignment: .center)
                    .clipped()
                    .cornerRadius(15)
                    .padding()
            
                Text(lieu.area)
                    .italic()
                    .font(.title2)
                    .multilineTextAlignment(.center)
                .padding(.top)
               
                HStack {
                    if lieu.url.isEmpty == false {
                        Link(destination: URL(string: lieu.url)!) {
                          Text(lieu.title)
                        }
                    }
                 
                  
                }
                .padding()
                .font(.callout)
                
            }
            
            // TITRE ARTICLE
//                .navigationTitle(lieu.title)
//            .navigationBarTitleDisplayMode(.inline)
            
            
            .toolbar {
            // PARTAGE
            ToolbarItem(placement: .navigationBarTrailing) {
                Button(action: {
                    print("share")
                }, label: {
                    Image(systemName: "square.and.arrow.up")
                })
            }
        }
    }
        
    }
}

struct DetailsLocationsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsLocationsView(lieu:
                                Lieux(title: "FUTUROSCOPE :", subtitle: "", content: "", url: "https://www.futuroscope.com/ -", area: "CHASSENEUIL du POITOU (86)", image: "Futuroscope" , isFavorite: false)
                )
    }
}

// STRUCTURE LIEU
//struct LieuView: View {
//    var lieu: Lieux
//    var body: some View {
//
//
//
//    }
//}
