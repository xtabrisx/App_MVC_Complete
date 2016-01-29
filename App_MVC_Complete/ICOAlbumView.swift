//
//  ICOAlbumView.swift
//  App_MVC_Complete
//
//  Created by cice on 29/1/16.
//  Copyright © 2016 djb. All rights reserved.
//

import UIKit

class ICOAlbumView: UIView {

   
    //AÑADIMOS VARIABLES PRIVADAS PORQUE NADIE FUERA DE ESTA CLASE NECESITA VER LO QUE ESTÁ AQUÍ, SERÁN IMPLEMENTADAS DE MANERA INTERNA EN LA CLASE
    
    private var caratulaAlbumFinal : UIImageView?
    private var activityIndicatorView : UIActivityIndicatorView?
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        //Método de inicializador común
        inicializadorComun()
    }
    
    init(frame: CGRect, caratulaAlbum : String) {
        super.init(frame: frame)
        
        inicializadorComun()
    }
    
    //MARK: - UTILS
    
    func inicializadorComun(){
        //1. fondo de la ImageView
        backgroundColor = UIColor.blackColor()
        caratulaAlbumFinal = UIImageView(frame: CGRectMake(5, 5, frame.size.width - 10, frame.size.height - 10))
        addSubview(caratulaAlbumFinal!)
        
        //2. ActivityIndicator
        activityIndicatorView = UIActivityIndicatorView()
        activityIndicatorView?.center = center
        activityIndicatorView?.activityIndicatorViewStyle = .Gray
        activityIndicatorView?.startAnimating()
        addSubview(activityIndicatorView!)
        
        
    }
    
    func highLightAlbum(didHighLightView view: Bool){
        if view{
            backgroundColor = UIColor.whiteColor()
            
        }
        else
        {
            backgroundColor = UIColor.blackColor()
        }
        
    }
    
}
