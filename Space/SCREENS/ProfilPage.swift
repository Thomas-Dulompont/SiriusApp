//
//  ProfilPage.swift
//  Space
//
//  Created by Christelle MORO on 24/03/2022.
//
import SwiftUI

struct ProfilPage: View {
    var body: some View{
        
        NavigationView{
            VStack{
                VStack {
                    Image("astronaute")
                        .resizable()
                        .scaledToFit()
                        .clipShape(Circle())
                        .frame(width: 100, alignment: .center)
                        .shadow(color: .gray, radius: 5, x: 3, y: 3)
                        .padding()
                    
                    Text("@KornFlex")
                        .font(.title)
                        .fontWeight(.heavy)
                }
                
                List(Profil.default){ Profil in
                    HStack{
                        Text(Profil.info)
                        Text(Profil.name)
                            .navigationTitle("Profil")
                            .navigationBarTitleDisplayMode(.inline)
                    }
                }
            }
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing){
                    Button(action: {
                    }) {
                        NavigationLink(destination: EditProfil()) {
                            Image(systemName: "gearshape")
                        }
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing){
                    Button(action: {
                    }) {
                        NavigationLink(destination: FaqPage()) {
                            Image(systemName: "questionmark.circle.fill")
                        }
                    }
                }
            }
        }
    }
}


struct ProfilPage_Previews: PreviewProvider {
    static var previews: some View {
        ProfilPage().preferredColorScheme(.dark)
    }
}
