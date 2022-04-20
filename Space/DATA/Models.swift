//
//  Models.swift
//  Space
//
//  Created by David Bonvin on 22/03/2022.
//

import Foundation
struct QuizList : Identifiable {
    var id = UUID()
    var title : String
    var subtitle : String
    var image : String
    
}
struct Quiz: Identifiable {
    var id = UUID()
    var title : String
    var image : String
    var subTitle : String
    var content : String
    var question : String
    var repondre_1 : String
    var repondre_2 : String
    var repondre_3 : String
    var icon_repondre : String
    
}

struct PodcastsListAudio : Identifiable {
    var id = UUID()
    var title : String
    var subtitle : String
    var Episode : String
    var imagen : String
    var buosons: [BuoSons]
    var imagenPodcast : String

}
struct BuoSons : Identifiable {
    var id = UUID()
    var title : String
    var subtitle : String
    var Episode : String
    var audioMp3 : String
}

// Model Cristelle
struct ArticlesQuiz: Identifiable {
    var id = UUID()
    var title : String
    var subtitle : String
    var content : String
    var reference : String
    var image : String
    var isFavorite: Bool
    
}

struct Lieu: Identifiable {
    var id = UUID()
    var name : String
    var website : String
    var area : String
    var image : String
}

// Structure Questionaire
struct Question: Identifiable {
    var id = UUID()
    var question: String
    var answer1 : String
    var answer2 : String
    var answer3 : String
    var bon : String
    
}




//Structure Profil



struct Profil: Identifiable {
    var id = UUID()
    var info: String
    var name: String
    static let `default` = [
        
    Profil(info: "Nom :", name: "Damman"),
    Profil(info: "Prenom :", name: "Damman"),
    Profil(info: "Age :", name: "21"),
    Profil(info: "Sexe :", name: "Homme"),
    Profil(info: "Adresse :", name: "143 RUE DE LA POSTE"),
    Profil(info: "Postal :", name: "59000"),
    Profil(info: "Anniversaire :", name: "25/01/2001")]
    
    var utilisateur = ""
}
    
// Thomas

struct Articles: Identifiable {
    var id = UUID()
    var title : String
    var subtitle : String
    var content : String
    var reference : String
    var url: String
    var image : String
    var isFavorite: Bool
    
}
struct Notifications: Identifiable {
    var id = UUID()
    var title: String
    var type: String
    var date: String
}
// Christelle

struct Lieux: Identifiable {
    var id = UUID()
    var title : String
    var subtitle : String
    var content : String
    var url : String
    var area : String
    var image : String
    var isFavorite: Bool
}
