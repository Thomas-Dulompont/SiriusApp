//
//  ListQuizz.swift
//  Space
//
//  Created by David Bonvin on 22/03/2022.
//

import SwiftUI

struct ListQuizz: View {
    var body: some View {
        NavigationView{
            VStack{
                ForEach(articlesQuiz) { article in
                    NavigationLink(destination: DetailQuiz(article: article), label: {
                        QuizRow(element:article)
                            .frame(width: 340, height: 100)
                            .padding(.bottom, 10)
                    })
                }
            }
            .navigationTitle("Quiz")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        print("test")
                    }, label: {
                        Image(systemName: "wand.and.stars")
                    })
                }
            }
        }
    }
}
struct ListQuizz_Previews: PreviewProvider {
    static var previews: some View {
        ListQuizz()
    }
}
struct QuizRow: View {
    var element: ArticlesQuiz
    var body: some View{
        ZStack{
            Rectangle ()
                .frame(width: 380, height: 110)
                .foregroundColor(Color(red: 0.11, green: 0.11, blue: 0.123))
                .cornerRadius(10.0)
            HStack{
                
                VStack(alignment: .leading){
                    Text(element.title)
                        .padding(.bottom, 30)
                        .font(.body)
                        .foregroundColor(.white)
                    Text("")
                        .foregroundColor(.white)
                }
                .padding(.trailing, 30)
                .padding(.leading, 10)
                Spacer()
                
                Image (element.image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 90, height: 90)
                    .cornerRadius(16)
                Image (systemName: "chevron.forward")
                    .foregroundColor(.white)
                    .padding(.bottom, 55)
                    .padding(.trailing,7)
            }
        }
        .padding()
    }
}
