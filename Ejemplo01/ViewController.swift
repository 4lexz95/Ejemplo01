//
//  ViewController.swift
//  Ejemplo01
//
//  Created by Alex Franch on 24/11/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtMarca: UITextField!
    @IBOutlet weak var txtModelo: UITextField!
    @IBOutlet weak var txtPrecio: UITextField!
    @IBOutlet weak var swDigital: UISwitch!
    @IBOutlet weak var lblresumen: UILabel!
    
    
    var listaRelojes: [Reloj] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lblresumen.text = "Tengo  \(listaRelojes.count) relojes"
        
        
        
    }

    @IBAction func btnCrearReloj(_ sender: Any) {
        let marca = txtMarca.text!
        let modelo = txtModelo.text!
        let precio = txtPrecio.text!
        let digital = swDigital.isOn
        
        let precioFloat: Float = precio.isEmpty ? 0 : Float(precio)!
        
        var reloj = Reloj(marca:marca, modelo:modelo, precio: precioFloat, digital: digital)
        
        listaRelojes.append(reloj)
        
        
        print(reloj)
        
        
        lblresumen.text = "Tengo  \(listaRelojes.count) relojes"
        
    }
    
}

