//
//  ViewController.swift
//  App_MVC_Complete
//
//  Created by cice on 29/1/16.
//  Copyright © 2016 djb. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: - VARIABLES LOCALES
    private var allAlbumesMusicales = [ICOAlbumModel]()
    private var currentAlbumMusicalData: (titulos:[String], valores:[String])?
    private var indiceAlbumActual : Int = 0
    

    //MARK: - IBOUTLET
    
    @IBOutlet weak var myTableViewVC: UITableView!
    
    @IBOutlet weak var myToolBarVC: UIToolbar!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        //" -> apagamos la propiedad de transparencia a la barra de navegación
        navigationController?.navigationBar.translucent = false
        
        indiceAlbumActual = 0
        //2.1 -> aquí configuramos el delegado de la tabla y el datasource
        
        myTableViewVC.delegate = self
        myTableViewVC.dataSource = self
        
        
        //2.2 -> Obtenemos un a lista de todos los ábumes a través de nuestra API
        
        allAlbumesMusicales = ICOLibraryAPI.sharedInstance.getAlbumesMusicales()
        
        showDataAlbumesMusicales(indiceAlbumActual)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //MARK: - UTILS
    func showDataAlbumesMusicales(albumesIndice : Int){
        
        //1 -> Código defensivo es importante asegurarnos que el índice solicitado es inferior a la cantidad de álbumes
        
        if albumesIndice < allAlbumesMusicales.count && albumesIndice > -1{
            
            
            //2 -> traemos el álbum musical
            let album = allAlbumesMusicales[albumesIndice]
            
            
            //3 -> guardamos los datos del álbum para representarlo posteriormente en la tableView
            currentAlbumMusicalData = album.icoae_tableRepresentation()
            
        }
        else{
            
            currentAlbumMusicalData = nil
            
        }
    
        //4 -> tenemos que recargar los datos y refrescar la vista de table
        myTableViewVC.reloadData()
        
    }

}

//MARK: - EXTENSIONES TABLA

extension ViewController : UITableViewDelegate{
    
    
    
    
}


extension ViewController : UITableViewDataSource{
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let albumData = currentAlbumMusicalData{
            
            return albumData.titulos.count
            
        }
        else{
            return 0
        }
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell: UITableViewCell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)
        /*
        let albumData = currentAlbumMusicalData
        cell.textLabel?.text = albumData!.titulos[indexPath.row]
        */
        
        if let albumData = currentAlbumMusicalData{
            
            cell.textLabel?.text = albumData.titulos[indexPath.row]
            cell.detailTextLabel?.text = albumData.valores[indexPath.row]
        }
        
        return cell
        
    }
}




