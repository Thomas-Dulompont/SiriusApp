//
//  DetailQuiz.swift
//  Space
//
//  Created by David Bonvin on 23/03/2022.
//

import SwiftUI

struct DetailQuiz: View {
    @State var article : ArticlesQuiz
    @State var isFavorite: Bool = false
    var selectedTheme: [Question] {
        switch article.title {
        case "Planètes":
            return questionsPlanete
        case "Astronaute":
            return questionsAstronaut
        case "Galaxies":
            return questionsGalaxy
        case "Voyages dans l'espace":
            return questionsSpaceTravel
        default:
            return questionsAstronomy
        }
    }
    var favoriteIcon: String {
        article.isFavorite ? "heart.fill" : "heart"
    }
    
    var body: some View {
        VStack {
            HStack(alignment: .top) {
                Spacer()
                
                Button(action: {
                    isFavorite.toggle()
                    article.isFavorite.toggle()
                }, label: {
                    Image(systemName: favoriteIcon)
                        .font(.title2)
                        .foregroundColor(.gray)
                        .padding(.horizontal)
                })
            }
            
            Text(article.title.capitalized)
                .font(.title)
                .fontWeight(.heavy)
            
            ScrollView {
            Image(article.image)
                .resizable()
                .scaledToFit()
            
            HStack{
                Text(article.subtitle)
                    .italic()
                    .font(.title2)
                    .padding()
                    .padding(.trailing,60)
                
                NavigationLink(destination: QuestionQuiz(element: selectedTheme.randomElement()!), label: {
                    HStack {
                        Text("Quiz")
                    }
                    .padding()
                    .background(Color(red:0.11,green: 0.11, blue: 0.123))
                    .cornerRadius(10)
                    .foregroundColor(.white)
                })
            }
            ScrollView {
                
                
                Text(article.content)
                    .padding()
                    .multilineTextAlignment(.leading)
                Text("Ref. \(article.reference)")
                    .padding(.all, 5)
                    .font(.callout)
                
            }
            .preferredColorScheme(.dark)
            
            
            
        }
            .padding(.bottom, 40)
        }
    }
}

struct DetailQuiz_Previews: PreviewProvider {
    static var previews: some View {
        DetailQuiz (
            article: ArticlesQuiz(title: "Planètes", subtitle: "Terre", content: "La Terre est la troisième planète par ordre d'éloignement au Soleil et la cinquième plus grande du Système solaire aussi bien par la masse que le diamètre. Par ailleurs, elle est le seul objet céleste connu pour abriter la vie." , reference: "Wikipédia", image: "Planet", isFavorite: false)
        )
    }
}
