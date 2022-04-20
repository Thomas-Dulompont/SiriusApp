//
//  Articleslist.swift
//  Space
//
//  Created by David Bonvin on 22/03/2022.
//

import SwiftUI

struct Articleslist: View {
    @State var articles: [Articles]
    var body: some View {
        List(articles) { article in
            Text(article.title)
        }
    }
}

struct Articleslist_Previews: PreviewProvider {
    static var previews: some View {
        Articleslist(articles: [
            Articles(title: "Planètes", subtitle: "Terre", content: "blabla", reference: "", image: "Planet", isFavorite: false),
            Articles(title: "Astronaute", subtitle: "Thomas Pesquet", content: "", reference: "", image: "", isFavorite: false)])
            .preferredColorScheme(.dark)
    }
}

