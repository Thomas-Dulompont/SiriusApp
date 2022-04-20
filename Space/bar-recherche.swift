//
//  bar-recherche.swift
//  Space
//
//  Created by David Bonvin on 23/03/2022.
//

import SwiftUI

struct bar_recherche: View {
    @State private var searchText = ""

       var body: some View {
           NavigationView {
               Text("Searching for (searchText)")
                   .searchable(text: $searchText)
                   .navigationTitle("Quiz")
                   
           }
       }
}

struct bar_recherche_Previews: PreviewProvider {
    static var previews: some View {
        bar_recherche()
    }
}
