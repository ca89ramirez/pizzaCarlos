//
//  elegirViewController.swift
//  pizzaCarlos
//
//  Created by Carlos Ramirez Velazquez on 12/14/15.
//  Copyright (c) 2015 Carlos Ramirez Velazquez. All rights reserved.
//

import UIKit

class elegirViewController: UIViewController {

    @IBOutlet weak var size: UILabel!
    var tam:String = " "
    var masa:String = " "
    var queso:String = " "
    //var ingredientes:[String?]=[" "]
    var ingredientes = " "
    
    @IBOutlet weak var labelIngredientes: UILabel!
    @IBOutlet weak var labelMasa: UILabel!
    @IBOutlet weak var labelQueso: UILabel!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        elegirQueso?.enabled = false
        eligeIngredientes?.enabled = false
        buttonConfirm?.enabled = false
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var elegirQueso: UIButton!
    
    @IBAction func pastaGruesa() {
        masa="Gruesa"
        labelMasa.text=masa
        print(masa)
        elegirQueso.enabled = true
        
    }
    
    @IBAction func pastacruji() {
        masa = "Crujiente"
        labelMasa.text=masa
        elegirQueso.enabled = true
    }
    
    @IBAction func pastaDelgada() {
        masa = "Delgada"
        labelMasa.text=masa
        elegirQueso.enabled = true
    }
    
    
    
    @IBOutlet weak var eligeIngredientes: UIButton!
    
    @IBAction func quesoMozz() {
        queso = "Mozzarella"
        labelQueso.text=queso
        print(queso)
        eligeIngredientes.enabled = true
        
    }
    @IBAction func quesoChe() {
        queso = "Cheddar"
        labelQueso.text=queso
        eligeIngredientes.enabled = true
    }

    @IBAction func quesoParme() {
        queso = "Parmesano"
        labelQueso.text=queso
        eligeIngredientes.enabled = true
    }
 
    @IBAction func quesoSin() {
        queso = "Sin queso"
        labelQueso.text=queso
        eligeIngredientes.enabled = true
    }
    
  /*  @IBOutlet weak var miSwitch: UISwitch!
   
    @IBAction func botonJamon() {
        if miSwitch.on{
            miSwitch.setOn(false, animated: true)
           // ingredientes.append("jamon")
            ingredientes += "Jamon"
            labelIngredientes.text = ingredientes
            
        }else{
            miSwitch.setOn(true, animated: false)
        }
    }*/
    

    @IBOutlet weak var buttonConfirm: UIButton!
    @IBOutlet weak var switchJamon: UISwitch!
    
    @IBAction func botonJamon() {
        if switchJamon.on{
            switchJamon.setOn(false, animated: true)
            // ingredientes.append("jamon")
            ingredientes += "Jamon"
            labelIngredientes.text = ingredientes
            buttonConfirm.enabled = true
            
        }else{
        switchJamon.setOn(true, animated: false)
        }
    }
    
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
    
    @IBOutlet weak var switchPavo: UISwitch!
    @IBOutlet weak var switchSalchicha: UISwitch!
    @IBOutlet weak var switchAceituna: UISwitch!
    @IBOutlet weak var switchPina: UISwitch!
    
    @IBAction func botonPavo(sender: AnyObject) {
        if switchPavo.on{
            switchPavo.setOn(false, animated: true)
            // ingredientes.append("jamon")
            ingredientes += "Pavo"
            labelIngredientes.text = ingredientes
            print(ingredientes)
            buttonConfirm.enabled = true
            
        }else{
            switchPavo.setOn(true, animated: false)
        }
    }
    
    @IBAction func botonSalchi() {
        if switchSalchicha.on{
            switchSalchicha.setOn(false, animated: true)
            // ingredientes.append("jamon")
            ingredientes += "Salchicha"
            labelIngredientes.text = ingredientes
             print(ingredientes)
            buttonConfirm.enabled = true
            
        }else{
            switchSalchicha.setOn(true, animated: false)
        }
    }
    
    @IBAction func botonAceitu() {
        if switchAceituna.on{
            switchAceituna.setOn(false, animated: true)
            // ingredientes.append("jamon")
            ingredientes += "Aceituna"
            labelIngredientes.text = ingredientes
            buttonConfirm.enabled = true
            
        }else{
            switchAceituna.setOn(true, animated: false)
        }
    }
    
    @IBAction func botonPina() {
        if switchPina.on{
            switchPina.setOn(false, animated: true)
            // ingredientes.append("jamon")
            ingredientes += "Piña"
            labelIngredientes.text = ingredientes
            buttonConfirm.enabled = true
            
        }else{
            switchPina.setOn(true, animated: false)
        }
    }
    
    @IBOutlet weak var labelConfirmarQueso: UILabel!
  
    @IBOutlet weak var cheeseLabel: UILabel!
    @IBOutlet weak var labelConfMasa: UILabel!
    override func  viewWillAppear(animated: Bool) {
    cheeseLabel?.text = tam
    
        
    }
    
   
    
    @IBAction func confirmarPizza(sender: AnyObject) {
        labelConfMasa?.text=masa
        print(masa)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
