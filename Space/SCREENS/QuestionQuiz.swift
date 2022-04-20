//
//  QuestionQuiz.swift
//  Space
//
//  Created by David Bonvin on 23/03/2022.
//

import SwiftUI

struct QuestionQuiz: View {
    var element:  Question
    @State var isReponse1: Bool = false
    @State var isReponse2: Bool = false
    @State var isReponse3: Bool = false
    var iconImageQuizA : String {
        isReponse1 ? "a.square.fill" : "a.circle.fill"
    }
    var iconImageQuizB : String {
        isReponse2 ? "b.square.fill" : "b.circle.fill"
    }
    var iconImageQuizC : String {
        isReponse3 ? "c.square.fill" : "c.circle.fill"
    }
    @State var solution = ""
    var body: some View {
        VStack{
            Image (systemName: "brain.head.profile")
                .font(.system(size: 60))
                .padding(.bottom, 10)
                .foregroundColor(.white)
            Text(solution)
                .font(.largeTitle)
            ZStack{
                Rectangle ()
                    .frame(width: 360, height: 350)
                    .cornerRadius(10.0)
                    .foregroundColor(Color(red:0.11,green: 0.11, blue: 0.123))
                // Questions
                VStack{
                    Text(element.question)
                    HStack{
                        Image(systemName: iconImageQuizA)
                            .font(.system(size: 30))
                            .foregroundColor(isReponse1 ? .blue : .white)
                        Text(element.answer1)
                    }
                    .padding()
                    .onTapGesture {
                        isReponse1.toggle()
                        if isReponse1 == true {
                            isReponse2 = false
                            isReponse3 = false
                        }
                    }
                    HStack{
                        Image(systemName: iconImageQuizB)
                            .font(.system(size: 30))
                            .foregroundColor(isReponse2 ? .blue : .white)
                        Text(element.answer2)
                    }
                    .padding()
                    .onTapGesture {
                        isReponse2.toggle()
                        if isReponse2 == true {
                            isReponse1 = false
                            isReponse3 = false
                        }
                    }
                    HStack{
                        Image(systemName: iconImageQuizC)
                            .font(.system(size: 30))
                            .foregroundColor(isReponse3 ? .blue : .white)
                        Text(element.answer3)
                    }
                    .padding()
                    .onTapGesture {
                        isReponse3.toggle()
                        if isReponse3 == true {
                            isReponse1 = false
                            isReponse2 = false
                        }
                    }
                }
            }
            HStack{
                ExtraSuivant()
                    .padding(.trailing, 40)
                Button {
                    isAnsweredCorrect()
                } label: {
                    Text (" Valider")
                        .padding()
                        .background(Color(red:0.11,green: 0.11, blue: 0.123))
                        .cornerRadius(10)
                        .foregroundColor(.white)
                }
            }
            .padding(.top)
            Spacer()
        }
        .preferredColorScheme(.dark)
    }
    
    func isAnsweredCorrect() {
        if isReponse1 && (element.answer1 == element.bon) {
            solution = "Bravo !"
        } else if isReponse2 && (element.answer2 == element.bon) {
            solution = "Bravo !"
        } else if isReponse3 && (element.answer3 == element.bon) {
            solution = "Bravo !"
        } else {
            solution = "Faux !"
        }
    }
}

struct QuestionQuiz_Previews: PreviewProvider {
    static var previews: some View {
        QuestionQuiz(element: questionsPlanete[0])
    }
}

struct ExtraSuivant: View {
    var body: some View {
        NavigationLink(destination: ResultatQuiz(), label: {
            HStack {
                Text("Suivant")
            }
            .padding()
            .background(Color(red:0.11,green: 0.11, blue: 0.123))
            .cornerRadius(10)
            .foregroundColor(.white)
        })
    }
}
