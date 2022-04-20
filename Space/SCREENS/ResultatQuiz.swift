//
//  ResultatQuiz.swift
//  Space
//
//  Created by David Bonvin on 24/03/2022.
//

import SwiftUI

struct ResultatQuiz: View {
    var body: some View {
        VStack{
            Text("Félicitation")
                .font(.title)
                .fontWeight(.heavy)
            Image(systemName: "hand.thumbsup.fill")
            //hand.thumbsdown.fill
                .resizable()
                .scaledToFit()
                .padding(80)
            
                .padding(.top, 30)
            Spacer()
        }
        
        .preferredColorScheme(.dark)
    }
}
struct ResultatQuiz_Previews: PreviewProvider {
    static var previews: some View {
        ResultatQuiz()
    }
}
