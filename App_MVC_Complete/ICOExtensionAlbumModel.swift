//
//  ICOExtensionAlbumModel.swift
//  App_MVC_Complete
//
//  Created by Alberto Tocados on 1/2/16.
//  Copyright © 2016 djb. All rights reserved.
//

import Foundation

extension ICOAlbumModel{
    
    func icoae_tableRepresentation() -> (titulos:[String], valores:[String]){
        
        
        return (["Artista", "Album de Música", "Género", "Año"], [artista!, tituloAlbum!, generoMusical!, anyoDisco!])
    
    }
    
    
    
}
