//
//  ICOAlbumModel.swift
//  App_MVC_Complete
//
//  Created by cice on 29/1/16.
//  Copyright © 2016 djb. All rights reserved.
//

import UIKit

class ICOAlbumModel: NSObject {
    
    //MARK: - VARIABLES
    var tituloAlbum :String?
    var artista :String?
    var generoMusical :String?
    var urlCaratula :String?
    var anyoDisco :String?

    //INICIALIZADOR DE LA CLASE
    //SE DEFINE COMO EL INICIALIZADOR DESIGNADO (CONSTRUCTOR)
    
    init(aTituloAlbum:String, aArtista:String, aGeneroMusical:String, aUrlCaratula:String, aAnyoDisco:String) {
        super.init()
        
        self.tituloAlbum = aTituloAlbum
        self.artista = aArtista
        self.generoMusical = aGeneroMusical
        self.urlCaratula = aUrlCaratula
        self.anyoDisco = aAnyoDisco
    }
    
    
    //el método description devuelve una representación de cadena de atributos
    override var description : String{
        return "tituloAlbum: \(tituloAlbum)" + " Artista: \(artista)" + " Género: \(generoMusical)" + "urlCaratula: \(urlCaratula)" + "añoDisco: \(anyoDisco)"
    }
    
}
