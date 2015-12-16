//
//  ingredientesController.swift
//  pizzaCarlos
//
//  Created by Carlos Ramirez Velazquez on 12/16/15.
//  Copyright (c) 2015 Carlos Ramirez Velazquez. All rights reserved.
//

import UIKit

class ingredientesController: UIViewController {
    
    
    var tam : String = " "
    var masa :String = " "
    var queso : String = " "
    var ingredientes = " "
    
    @IBOutlet weak var lblTamano: UILabel!
    
    @IBOutlet weak var lblMasa: UILabel!
    
    @IBOutlet weak var lblQueso: UILabel!
    
    @IBOutlet weak var lblIngredientes: UILabel!
    
    
    @IBOutlet weak var btnConfirm: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        btnConfirm.enabled = false

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        lblTamano.text = tam
        lblMasa.text = masa
        lblQueso.text = queso
    }
    
    @IBOutlet weak var switchPepe: UISwitch!
    
    @IBOutlet weak var switchPavo: UISwitch!

    @IBOutlet weak var switchAceituna: UISwitch!
    
    @IBOutlet weak var switchJamon: UISwitch!
    
    @IBOutlet weak var switchPina: UISwitch!
    
    @IBOutlet weak var switchSalchicha: UISwitch!
    
    @IBAction func btnPepe() {
        if switchPepe.on{
            switchPepe.setOn(false, animated: true)
            ingredientes += "Peperoni"
            lblIngredientes.text = ingredientes
            btnConfirm.enabled = true
        }else{
            switchPepe.setOn(true, animated: false)
        }
    }
    @IBAction func btnPavo() {
        if switchPavo.on{
            switchPavo.setOn(false, animated: true)
            ingredientes += "Pavo"
            lblIngredientes.text = ingredientes
            btnConfirm.enabled = true
        }else{
            switchPavo.setOn(true, animated: false)
        }
    }
    
    @IBAction func btnAceitu() {
        if switchAceituna.on{
            switchAceituna.setOn(false, animated: true)
            ingredientes += "Aceituna"
            lblIngredientes.text = ingredientes
            btnConfirm.enabled = true
        }else{
            switchAceituna.setOn(true, animated: false)
        }
    }
    
    @IBAction func btnJam() {
        if switchJamon.on{
            switchJamon.setOn(false, animated: true)
            ingredientes += "Jamon"
            lblIngredientes.text = ingredientes
            btnConfirm.enabled = true
        }else{
            switchJamon.setOn(true, animated: false)
        }
    }
    
    
    @IBAction func btnPina() {
        if switchPina.on{
            switchPina.setOn(false, animated: true)
            ingredientes += "Pina"
            lblIngredientes.text = ingredientes
            switchPina.enabled = true
        }else{
            switchPina.setOn(true, animated: false)
        }
    }
    
    @IBAction func btnSalchi() {
        if switchSalchicha.on{
            switchSalchicha.setOn(false, animated: true)
            ingredientes += "Salchicha"
            lblIngredientes.text = ingredientes
            btnConfirm.enabled = true
        }else{
            switchSalchicha.setOn(true, animated: false)
        }
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let enviarTam = tam
        let enviarMasa = masa
        let enviarQueso = queso
        let enviarIngre = ingredientes
        let vistaConfirmar = segue.destinationViewController as! elegirViewController
        vistaConfirmar.tam = enviarTam
        vistaConfirmar.masa = enviarMasa
        vistaConfirmar.queso = enviarQueso
        vistaConfirmar.ingredientes = enviarIngre
    }
    
    /*
    @IBOutlet weak var switchPeperoni: UISwitch!
    
    @IBAction func botonPepero() {
    if switchPeperoni.on{
    switchPeperoni.setOn(false, animated: true)
    // ingredientes.append("jamon")
    ingredientes += "Peperoni"
    labelIngredientes.text = ingredientes
    buttonConfirm.enabled = true
    
    }else{
    switchPeperoni.setOn(true, animated: false)
    }
    }
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
