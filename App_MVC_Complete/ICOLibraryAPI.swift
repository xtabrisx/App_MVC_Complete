//
//  ICOLibraryAPI.swift
//  App_MVC_Complete
//
//  Created by cice on 29/1/16.
//  Copyright © 2016 djb. All rights reserved.
//

import UIKit

class ICOLibraryAPI: NSObject {
    //MARK: - VARIABLES
    private let persistancyManager : ICOPersistencyManager
    private let httpClient : ICOHTTPClient
    private let isOnline : Bool //Esto determina si el servidor debe actualizarse con los cambios de la lista de álbumes.
    
    override init(){
        
        persistancyManager = ICOPersistencyManager() //alloc init
        httpClient = ICOHTTPClient() //alloc init
        isOnline = false
        
    }
    
    
    //MARK: - SINGLETON
    //1 -> Creamos una variable de clase de tipo computerizada (OBJC)
    class var sharedInstance : ICOLibraryAPI{
        
        //2 -> anidamos dentro de la variable de la clase una estructura llamada SINGLETON
        struct  Singleton {
            //3 - > Envuelve una constante "static" esto quiere decir que la constante sóloexiste una vez y son implícitamente perezosos, no se crea hasta que es necesario. Sólo se creará una única vez
            
            static let instance = ICOLibraryAPI()
            
        }
        //4 -> Devuelve la propiedad de tipo computerizada
        return Singleton.instance
        
    }
    
    //MARK: - MÉTODOS DE PERSISTANCYMANAGER

    func getAlbumesMusicales() -> [ICOAlbumModel]{
        
        return persistancyManager.getAlbumesMusicales()
        
    }
    
    func addAlbumesMusicales (album: ICOAlbumModel, indice: Int){
        persistancyManager.addAlbumesMusicales(album, indice: indice)
        
        if isOnline {
            httpClient.postRequest("/api/addAlbumesMusicales", body: album.description)
        }
        
    }
    
    func deleteAlbumesMusicales (indice: Int){
        
        persistancyManager.deleteAlbumesMusica(indice)
        
        if isOnline{
            
            httpClient.postRequest("/api/deleteAlbumesMusicales", body: "\(indice)")
            
        }
    }
}
