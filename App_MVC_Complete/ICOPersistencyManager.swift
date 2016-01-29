//
//  ICOPersistencyManager.swift
//  App_MVC_Complete
//
//  Created by cice on 29/1/16.
//  Copyright © 2016 djb. All rights reserved.
//

import UIKit

class ICOPersistencyManager: NSObject {
    
    //1 -> Aquí declaramos una var privada, no es constante
    
    private var albumesDeMusica = [ICOAlbumModel]() //alloc init
    
    override init() {
        //2 -> Estamos poblando el inicializador con cinco objetos
        
        let album1 = ICOAlbumModel(
            aTituloAlbum: "Best of Bowie",
            aArtista: "David Bowie",
            aGeneroMusical: "Pop",
            aUrlCaratula: "http://www.andresocampo.com/pruebas/CICE/albumMusic/thebestofbowie.jpg",
            aAnyoDisco: "1992")
        
        let album2 = ICOAlbumModel(
            aTituloAlbum: "Return of Saturn",
            aArtista: "No Doubt",
            aGeneroMusical: "Pop",
            aUrlCaratula: "http://www.andresocampo.com/pruebas/CICE/albumMusic/returnofsaturn.jpg",
            aAnyoDisco: "2003")
        
        
        let album3 = ICOAlbumModel(
            aTituloAlbum: "Songs of Ascent",
            aArtista: "U2",
            aGeneroMusical: "Pop",
            aUrlCaratula: "http://www.andresocampo.com/pruebas/CICE/albumMusic/songofascent.jpg",
            aAnyoDisco: "2009")
        
        let album4 = ICOAlbumModel(
            aTituloAlbum: "Nothing Like The Sun",
            aArtista: "Sting",
            aGeneroMusical: "Pop",
            aUrlCaratula: "http://www.andresocampo.com/pruebas/CICE/albumMusic/nothinglikethesun.jpg",
            aAnyoDisco: "1987")
        
        let album5 = ICOAlbumModel(
            aTituloAlbum: "Cowboy Madonna",
            aArtista: "Madonna",
            aGeneroMusical: "Pop",
            aUrlCaratula: "http://www.andresocampo.com/pruebas/CICE/albumMusic/madonnamusicalbum.jpg",
            aAnyoDisco: "2006")
        
        
        
    }
    

}
