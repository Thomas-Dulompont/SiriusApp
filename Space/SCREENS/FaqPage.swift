//
//  FaqPage.swift
//  Space
//
//  Created by Christelle MORO on 25/03/2022.
//

import SwiftUI

struct FaqPage: View {
    var body: some View {
        NavigationView{
            List(Faq.default){ faq in
                HStack{
                    Text(faq.question)
                    Text(faq.reponse)
                        .navigationTitle("FAQ")
                        .navigationBarTitleDisplayMode(.inline)
                }
            }
        }
    }
}
struct FaqPage_Previews: PreviewProvider {
    static var previews: some View {
        FaqPage()
    }
}
