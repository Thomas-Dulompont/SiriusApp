//
//  EditProfil.swift
//  Space
//
//  Created by David Bonvin on 24/03/2022.
//

import SwiftUI

struct EditProfil: View {
    var body: some View {
        NavigationView{
            VStack{
                Text("Edit profil")
                Spacer()
                Form {
                    Section(header:
                                Text("Information")) {
                        List(Profil.default){ Profil in
                            HStack{
                                Text(Profil.info)
                                Text(Profil.name)
                                    .navigationTitle("Profil")
                                    .navigationBarTitleDisplayMode(.inline)
                            }
                        }
                    }
                }
            }
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing){
                    Button {
                        print("test")
                    } label: {
                        Text("Sauvegarder")
                    }
                }
            }
        }
    }
}


struct EditProfil_Previews: PreviewProvider {
    static var previews: some View {
        EditProfil()
    }
}
