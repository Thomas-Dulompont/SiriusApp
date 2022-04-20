//
//  Univers.swift
//  Space
//
//  Created by David Bonvin on 24/03/2022.
//

import SwiftUI
import WebKit

struct UniversView: UIViewRepresentable {
    
    func makeUIView(context: UIViewRepresentableContext<UniversView>) -> UniversView.UIViewType {
        WKWebView(frame: .zero)
    }
    
    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<UniversView>) {
        //        let request = URLRequest(url: URL(string: "https://www.google.com/intl/fr_ALL/sky/")!)
        let request = URLRequest(url: URL(string: "https://stellarium-web.org/")!)
        uiView.load(request)
            
    }
    
}


struct Univers_Previews: PreviewProvider {
    static var previews: some View {
        ZStack{
            UniversView()
                        .padding(.bottom,60)
            
            
        
            
        }
    }
}
