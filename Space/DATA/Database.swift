//
//  Database.swift
//  Space
//
//  Created by David Bonvin on 22/03/2022.
//

import Foundation
import SwiftUI

var quizlist : [QuizList] = [
    QuizList(title: "PLANÈTES", subtitle: "", image: "Planet"),
    QuizList(title: "ASTRONAUTES", subtitle: "", image: "Astronaute__1"),
    QuizList(title: "GALAXIES", subtitle: "", image: "Galaxie"),
    QuizList(title: "VOYAGE DANS L'ESPACE", subtitle: "", image: "Voyages"),
    QuizList(title: "ASTRONOMIE", subtitle: "", image: "Astronomy")
    
]
var podcastsListAudio : [PodcastsListAudio] = [
    PodcastsListAudio(title: "Univers", subtitle: "Terre", Episode: "1", imagen: "a12", buosons: audiosPodcast1, imagenPodcast: "a12" ),
    PodcastsListAudio(title: "Mars", subtitle: "Thomas Pesquet", Episode: "1", imagen: "a14", buosons: audiosPodcast2, imagenPodcast: "a13"),
    PodcastsListAudio(title: "La matière noire", subtitle: "La Voie Lactée", Episode: "1", imagen: "a13",  buosons: audiosPodcast3, imagenPodcast: "a14"),
    PodcastsListAudio(title: "Voyages dans l'espace", subtitle: "Virgin Galactic", Episode: "1", imagen: "a14", buosons: audiosPodcast4, imagenPodcast: "a15"),
    PodcastsListAudio(title: "Astronomie", subtitle: "L'étoile", Episode: "1", imagen: "a15",  buosons: audiosPodcast4, imagenPodcast: "a16"),
]
var audiosPodcast1 : [BuoSons] = [
    BuoSons(title: "L'histoire de l'Univers", subtitle: "UniversImage", Episode: "Episode 1", audioMp3: "la-matiere-noire-est-elle-la-cle-de-lunivers" ),
    BuoSons(title: "L'histoire de l'Univers", subtitle: "Galaxie", Episode: "Epidode 2", audioMp3: "la-matiere-noire-est-elle-la-cle-de-lunivers"),
    BuoSons(title: "L'histoire de l'Univers", subtitle: "Galaxy", Episode: "Episode 3", audioMp3: "black-helicopters"),

]
var audiosPodcast2 : [BuoSons] = [
    BuoSons(title: "Mars", subtitle: "mars", Episode: "Episode 1", audioMp3: "new-order-blue-monday"),
    BuoSons(title: "Mars", subtitle: "mars2", Episode: "Episode 2", audioMp3: "janis-joplin-kozmic-blues"),
    BuoSons(title: "Mars", subtitle: "mars", Episode: "Episode 3", audioMp3: "new-order-blue-monday"),

]
var audiosPodcast3 : [BuoSons] = [
    BuoSons(title: "La matière noire ", subtitle: "matierenoire", Episode: "Episode 1", audioMp3: "la-matiere-noire-est-elle-la-cle-de-lunivers"),
    BuoSons(title: "La matiere noire 2", subtitle: "Universss", Episode: "Episode 2", audioMp3: "the-architect-les-pensees"),
    BuoSons(title: "La matiere noire 3", subtitle: "UNI", Episode: "Epidode 3", audioMp3: "the-roots-you-got-me-ft-erykah-badu"),
]
var audiosPodcast4 : [BuoSons] = [
    BuoSons(title: "Voyages dans l'espace", subtitle: "voyage__space", Episode: "Episode 1", audioMp3: "sebastien-tellier-la-ritournelle-official-audio"),
    BuoSons(title: "Voyages dans l'espace", subtitle: "Voyages", Episode: "Episode 2", audioMp3: "janis-joplin-kozmic-blues"),
    BuoSons(title: "Voyages dans l'espace", subtitle: "mars", Episode: "Episode 3", audioMp3: "the-roots-you-got-me-ft-erykah-badu"),

]

// Data Christelle

var articlesQuiz :[ArticlesQuiz] = [
    ArticlesQuiz(title: "Planètes", subtitle: "Terre", content: "La Terre est la troisième planète par ordre d'éloignement au Soleil et la cinquième plus grande du Système solaire aussi bien par la masse que le diamètre. Par ailleurs, elle est le seul objet céleste connu pour abriter la vie. Elle compte environ 7,7 milliards d'habitants" , reference: "Wikipédia", image: "Planet", isFavorite: false),
ArticlesQuiz(title: "Astronaute", subtitle: "Thomas Pesquet", content: "Thomas Pesquet, né le 27 février 1978 à Rouen (Seine-Maritime), est un spationaute français.Après une formation d'ingénieur aéronautique à l'ISAE-SUPAERO (Institut Supérieur de l'Aéronautique et de l'Espace) à Toulouse, Il passe une année au sein du programme de mastère en aéronautique à l'École Polytechnique de Montréal, à l’Université Concordia et à l’Université McGill.Thomas Pesquet est en mesure de s’exprimer dans six langues.En 2005, il devient pilote de ligne. En mai 2009, il fait partie des six candidats retenus pour former le troisième groupe de spationautes européens sélectionnés par l'Agence spatiale européenne (ESA).Il est le dixième Français à partir dans l'espace en décollant le 17 novembre 2016.Le 23 avril 2021, il embarque pour la deuxième fois de son existence vers la station spatiale internationale (ISS), le 4 octobre, il devient le premier Français commandant de l'ISS. Il rentre sur terre le 8 novembre 2021, après 200 jours en orbite. Il a réalisé pendant cette mission 134 expériences, et 4 sorties extra-véhiculaires.Il est aujourd'hui l'astronaute européen le plus expérimenté (avec près de 400 jours dans l'espace) et aussi en sorties extra-véhiculaires."
, reference: "Wikipedia", image: "astronaute", isFavorite: false),
ArticlesQuiz(title: "Galaxies", subtitle: "La Voie Lactée", content: "Une galaxie est un assemblage d'étoiles, de gaz, de poussières, de vide et peut-être essentiellement de matière noire, contenant parfois un trou noir supermassif en son centre.La Voie lactée, la galaxie dans laquelle se trouve le Système solaire, compte quelques centaines de milliards d'étoiles et a une extension de l'ordre de 80 000 années-lumière. Un rapport de la mission spatiale européenne Gaia a rendu publique, le 25 avril 2018, la position de 1 692 919 135 étoiles de notre galaxie, ce qui représente moins d'1 % de la totalité des étoiles présentes dans notre galaxie", reference: "Wikipedia", image: "Galaxy", isFavorite: false),
ArticlesQuiz(title: "Voyages dans l'espace", subtitle: "Virgin Galactic", content: "Pour tous les amoureux de l'espace, notez bien cette information : depuis ce mercredi 16 février 2022, il est désormais possible de réserver une place à bord de vols spatiaux de Virgin Galactic, la société qui concurrence le Blue Origin de Jeff Bezos. En échange de 450.000 dollars, vous pourrez, précise le média américain CNN, faire une virée de 90 minutes à bord d'une fusée à décollage aérien qui frôle les limites de l'espace. À la réservation, il faudra néanmoins s'acquitter d'un premier et salé acompte de 150.000 dollars, le reste étant dû avant le vol. La fusée sera lancée depuis la base Spaceport America au Nouveau-Mexique.", reference: "www.geo.fr", image: "Voyages", isFavorite: false),
ArticlesQuiz(title: "Astronomie", subtitle: "L'étoile", content: "Une étoile est une boule géante de gaz chaud que l'on peut comparer à un énorme moteur brûlant surtout de l'hydrogène. Dans le noyau des étoiles, les atomes se soudent grâce à la réaction physique appelée fusion nucléaire, ce qui libère d'énormes quantités d'énergie sous forme de lumière et de chaleur. La plupart des étoiles sont entourées de planètes.Exemples : Situé au centre du Système solaire, le Soleil est l'étoile la mieux étudiée. L'étoile la plus proche du Soleil est Proxima du Centaure. On utilise souvent Polaris (en anglais seulement) – l'étoile Polaire – pour nous aider à nous orienter.", reference: "https://www.asc-csa.gc.ca/fra/astronomie/fiches-information/etoiles.asp", image: "Astronomy", isFavorite: false)

]

var questionsPlanete: [Question] = [
    Question(question: "Combien y-a-t'il d'habitants sur Terre ?", answer1: "1,3 milliards" , answer2:  "5,2 milliards", answer3:  "7,7 milliards", bon: "7,7 milliards"),
    Question(question: "Quelle place occupe la Terre de part sa taille dans notre système solaire ?", answer1: "La troisième position", answer2: "La cinquième position", answer3: "ça dépend de la mode", bon: "La cinquième position"),
    Question(question: "D'après cet article, combien de planètes de notre système solaire abrite la vie ?", answer1: "deux planètes", answer2: "uniquement la Terre", answer3: "Mars et derrière la lune", bon: "uniquement la Terre"),]


var questionsAstronaut: [Question] = [
    Question(question: "Combien compte-t-il de jours dans l’espace ?", answer1: "270", answer2: "400", answer3: "310", bon: "400"),
    Question(question: "En quelle année a-t-il été retenu par l’ESA ?", answer1: "2006", answer2: "2009", answer3: "2011", bon: "2009"),]

var questionsGalaxy: [Question] = [
    Question(question: "qu'est ce qu'une galaxie ?", answer1: "un glaçon", answer2: "du galac", answer3: "un assemblage d'étoiles, de gaz, de poussières et de vide", bon: "un assemblage d'étoiles, de gaz, de poussières et de vide"),
    Question(question: "Comment s'appelle notre galaxie ?", answer1: "La voie Verte", answer2: "la voie Lactell", answer3: "La voie Lactée", bon: "La voie Lactée"),]

var questionsSpaceTravel: [Question] = [
    Question(question: "Quelle entreprise peut organiser un vol spacial pour des particuliers ?", answer1: "Virgin Radio", answer2: "Virgin Glatik", answer3: "Virgin Galactic", bon: "virgin Galactic"),
    Question(question: "Combien coûte un vol spatial chez Virgin G. ?", answer1: "45000€", answer2: "450000€", answer3: "450000$", bon: "450000$"),]
var questionsAstronomy : [Question] = [
    Question(question: "Que contient une étoile ?", answer1: "de l'hydrogène", answer2: "du méthane", answer3: "du gaz naturel", bon: "de l'hydrogène"),
    Question(question: "Quelle est l'étoile la plus étudiée ?", answer1: "Sirius", answer2: "Vénus", answer3: "le Soleil", bon: "le Soleil"),
]


// Eric // Christelle

struct Faq: Identifiable {
    var id = UUID()
    var question: String
    var reponse: String
    static let `default` = [
        
        Faq(question:"Quel est le but de l'application Siri-us ?", reponse: "L'application Siri-us a pour objectif de susciter voire resusciter de l'intérêt pour l'espace."),
        Faq(question:"Siri-us qu'est-ce que c'est ?", reponse: "C'est une application native iOS qui permet de naviguer dans l’espace pour donner l’envie d’en savoir plus, de s’informer et qui est accessible à tous (à partir de 8 ans). Elle possède une interface moderne avec des fonctions animées en 3D, la possibilité d’écouter des podcasts, des notifications (actualités en temps réels) et des petits quiz."),
        Faq(question:"Est-ce que l'application est payante ?", reponse: "La réponse est non, la connaissance est gratuite !"),
        Faq(question:"Dois-je m'inscrire pour utiliser l'application ?", reponse: "Ce n'est pas nécessaire"),
        Faq(question:"Est-ce que je peux enregistrer mes résultats aux quiz ? ", reponse: "Pas encore mais nous allons ajouter cette fonctionnalité lors de la prochaine mise à jour"),
        Faq(question:"Est-ce que l'application nécessite des connaissances poussées ?", reponse: "l'application est accessible à tous, toutefois on recommande un usage à partir de 8 ans")
            ]
}

//Thomas



var articles: [Articles] = [
    Articles(title: "14 / 03 / 22", subtitle: "La Russie avertit sur les risques d'une chute de la Station spatiale internationale", content: "Dmitri Rogozine, le chef de l'Agence spatiale russe Roscosmos, a alerté sur le risque d'une chute incontrôlée de la Station spatiale internationale en raison des sanctions infligées à la Russie. Selon ce proche de Vladimir Poutine, ces sanctions pourraient perturber le ravitaillement en carburant, rendant le complexe orbital incontrôlable. Ce qui est faux. Les sanctions n'empêchent pas le bon fonctionnement de l'ISS. D'ici quelques semaines, la Nasa testera un reboost de la station à l'aide d'un cargo Cygnus de façon à s'affranchir de l'aide des Russes pour cette manœuvre.", reference: "Rémy Decourt- Journaliste ", url: "www.futura-sciences.com", image: "ISS", isFavorite: false),
    Articles(title: "24/03/2022.", subtitle: "Astéroïde : on en sait plus sur Apophis qui frôlera la Terre en 2029", content: "Apophis passera au plus proche de notre Terre en 2029. Ce sera l'occasion pour les astronomes d'affiner leurs modèles. Et de comprendre, au-delà des risques de collision, quelles peuvent être les conséquences d'un passage d'un astéroïdeaussi près d'une planète. Des simulations numériques nous en offrent un aperçu dès aujourd'hui.Il a été découvert en juin 2004. Un astéroïde de quelque 350 mètres et d'environ 27 millions de tonnes. Et l'espace de quelques semaines, la communauté scientifique s'était inquiétée d'un impact possible avec notre Terre en avril 2029. Quelques semaines seulement. Car dès le mois de décembre 2004, des données d'archive ont montré que la collision était très improbable. Et de nouvelles données recueillies depuis - notamment à l'occasion du passage d'Apophis à seulement 17 millions de kilomètres de notre Terre, le 6 mars 2021 - ont encore éloigné le risque. L'orbite de l’astéroïde est désormais suffisamment définie pour exclure, avec certitude, tout impact pendant au moins cent ans.", reference: "Nathalie Mayer - Journaliste", url: "www.futura-sciences.com", image: "Asteroide", isFavorite: false),
    
    //    #1
    Articles(title: "Joël Ignasse 29/03/2022", subtitle: "Une exoplanète sur laquelle il pleut des rubis et des saphirs!", content: "Du métal liquide mais aussi des rubis et des saphirs pourraient pleuvoir sur un des hémisphères de l'exoplanète WASP-121b, une 'Jupiter chaude'. Au-delà de l'anecdote, cette découverte constitue une des premières vues globales de la météorologie d'un tel astre.Découverte en 2015, à 850 années-lumière de la Terre dans la constellation de La Poupe, l'exoplanète WASP-121b est un monde condamné. Trop proche de son étoile, elle en fait le tour en à peine 30 heures, elle finira par être disloquée par les forces de marée… dans quelques dizaines de millions d'années. Des indices de cette destruction annoncée sont déjà observables puisque l'astre n'est plus tout à fait sphérique mais a adopté la forme d'un ballon de rugby. Observé à plusieurs reprises par le télescope Hubble, il offre l'occasion aux astronomes d'étudier son complexe système météorologique qui recèle d'étonnantes particularités.", reference: "Joël Ignasse", url: "https://www.sciencesetavenir.fr/espace/univers/une-exoplanete-sur-laquelle-il-pleut-des-rubis-et-des-saphirs_16251", image: "exoplanet", isFavorite: false),
        Articles(
            title: "Article",
            subtitle: "Quand on regarde le ciel, on regarde dans le passé",
            content:
    """

    Par exemple, le Soleil se trouve à 8 minutes lumière de la Terre, donc regarder le soleil c’est regarder 8 minutes dans le passé. Une triste époque où vous ne connaissiez même pas encore ce top. Certaines étoiles dans le ciel sont peut-être mortes il y a très longtemps, comme la petite vieille que vous avez aidée à traverser la rue un jour.

    """,
            reference: "TOPITO",
            url: "https://www.topito.com/top-trucs-cools-univers",
            image: "article1",
            isFavorite: true),
    
    //    #2
        Articles(
            title: "Article",
            subtitle: "Une cuillère à café de matière d'étoile à neutrons pèse un milliard de tonnes",
            content:
    """

    Quelle idée de prendre une cuillère à café d’étoile à neutrons, en même temps.

    """,
            reference: "TOPITO",
            url: "https://www.topito.com/top-trucs-cools-univers",
            image: "article2",
            isFavorite: false),

    //    #3
        Articles(
            title: "Article",
            subtitle: "Il y a 400 milliards d'étoiles dans la Voie Lactée et 170 milliards de galaxies dans l'Univers",
            content:
    """

    Ca fait plus d’étoiles que de grains de sables sur une plage...

    """,
            reference: "TOPITO",
            url: "https://www.topito.com/top-trucs-cools-univers",
            image: "article3",
            isFavorite: false),
        
    //    #3
        Articles(
            title: "Article",
            subtitle: "Il se peut qu'il y a un nombre infini d'univers",
            content:
    """

    Ce qui ferait qu’on vit dans un multivers. Il se peut même que ces univers se forment à partir de trous noirs d’autres univers et que notre propre big bang serait issu d’un trou blanc (qui, hypothétiquement, serait ce qu’il pourrait y avoir à l’autre bout d’un trou noir).

    """,
            reference: "TOPITO",
            url: "https://www.topito.com/top-trucs-cools-univers",
            image: "article4",
            isFavorite: false),
    Articles(title: "Lorem Ipsum", subtitle: "Suuuu",
             content: """
La zone radiative est une région qui représente 70 % du rayon solaire, avec des températures comprises entre 1,5 et 15 millions de degrés, où l’énergie venant du noyau poursuit son chemin vers la surface.

Cette énergie arrive ensuite dans la zone convective, où elle est transportée par des courants montants et descendants de gaz chauds grâce à d’énormes bulles, appelées cellules de convection. La température est comprise ici entre 5 500 et 1,5 million de degrés.

L'énergie arrive enfin à la surface visible du Soleil appelée photosphère, pour finir par s’échapper et nous faire parvenir de la lumière et de la chaleur.

Son atmosphère est formée de 2 couches principales : la chromosphère où sont expulsés depuis la surface du Soleil des jets de matière pouvant atteindre une hauteur de 10 000 km, et la couronne constituée de gaz ionisés (plasma) où se déroulent divers phénomènes solaires.

"""
             , reference: "CNES",url: "https://cnes.fr/fr/le-soleil", image: "soleil", isFavorite: false),
    


    
]

var notifications: [Notifications] = [
    Notifications(title: "Nouvel Article !", type: "Article", date: "30/03/2022"),
    Notifications(title: "Nouveau Podcast !", type: "Podcast", date: "30/03/2022"),
    Notifications(title: "Nouveau Podcast !", type: "Podcast", date: "30/03/2022"),
    Notifications(title: "Nouveau Lieu Culte !", type: "Lieu", date: "28/03/2022"),
    Notifications(title: "Nouvel Article !", type: "Article", date: "28/03/2022"),
    Notifications(title: "Nouveau Lieu Culte !", type: "Lieu", date: "26/03/2022"),
    Notifications(title: "Nouvel Article !", type: "Article", date: "26/03/2022"),
    Notifications(title: "Nouveau Podcast !", type: "Podcast", date: "26/03/2022")
]





// Christelle


var lieu: [Lieux] = [
    Lieux(title: "LES PLANÉTARIUMS", subtitle: "", content: "", url: "http://www.aplf-planetariums.org/", area: "PARTOUT en FRANCE et dans le MONDE", image: "Planetarium", isFavorite: false),
    Lieux(title: "FUTUROSCOPE", subtitle: "", content: "", url: "https://www.futuroscope.com/", area: "CHASSENEUIL du POITOU (86)", image: "Futuroscope" , isFavorite: false),
    Lieux(title: "CITE de L’ESPACE", subtitle: "", content: "", url: "https://www.xn--cit-espace-d7a.com/", area: "TOULOUSE (31)", image: "Citedelespace",  isFavorite: false),
    Lieux(title: "MUSEE de l’AIR et de l’ESPACE" , subtitle: "",content: "", url: "https://www.museeairespace.fr/", area: "LE BOURGET (93)", image: "Musee",  isFavorite: false)
]
    
