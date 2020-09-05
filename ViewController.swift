//
//  ViewController.swift
//  Calculadora
//
//  Created by Paola Pagotto on 31/08/2020.
//  Copyright © 2020 Paola Pagotto. All rights reserved.
//

import UIKit

@IBDesignable extension UIButton {
    
    @IBInspectable var borderWidth: CGFloat {
        set {
            layer.borderWidth = newValue
        }
        get {
            return layer.borderWidth
        }
    }
    
    @IBInspectable var cornerRadius: CGFloat {
        set {
            layer.cornerRadius = newValue
        }
        get {
            return layer.cornerRadius
        }
    }
    
    @IBInspectable var borderColor: UIColor? {
        set {
            guard let uiColor = newValue else { return }
            layer.borderColor = uiColor.cgColor
        }
        get {
            guard let color = layer.borderColor else { return nil }
            return UIColor(cgColor: color)
        }
    }
}

@IBDesignable extension UILabel {
    
    @IBInspectable var borderWidth: CGFloat {
        set {
            layer.borderWidth = newValue
        }
        get {
            return layer.borderWidth
        }
    }
    
    @IBInspectable var borderColor: UIColor? {
        set {
            guard let uiColor = newValue else { return }
            layer.borderColor = uiColor.cgColor
        }
        get {
            guard let color = layer.borderColor else { return nil }
            return UIColor(cgColor: color)
        }
    }
}

extension Double {
    var clean: String {
        return self.truncatingRemainder(dividingBy: 1) == 0 ? String(format: "%.0f", self) : String(self)
    }
}


class ViewController: UIViewController {

    
 
    @IBOutlet weak var labelMostrador: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        labelMostrador.text = "0"
    }
    
    
    var valor1: Double?
    var valor2: Double?
    var resultado: Double?
    var operador: Character?
    var indexVirgula: Bool = false
    var operadorClicado: Bool = false
    
    @IBAction func actionButtonOne(_ sender: UIButton) {
        if labelMostrador.text == "0" || operadorClicado == true {
            labelMostrador.text = "1"
            operadorClicado = false
        } else {
            labelMostrador.text = "\(labelMostrador.text!)1"
            operadorClicado = false
        }
    }
    
    @IBAction func actionButtonTwo(_ sender: UIButton) {
        if labelMostrador.text == "0" || operadorClicado == true {
            labelMostrador.text = "2"
            operadorClicado = false
        } else {
            labelMostrador.text = "\(labelMostrador.text!)2"
            operadorClicado = false
        }
    }
    
    @IBAction func actionButtonThree(_ sender: UIButton) {
        if labelMostrador.text == "0" || operadorClicado == true {
            labelMostrador.text = "3"
            operadorClicado = false
        } else {
            labelMostrador.text = "\(labelMostrador.text!)3"
            operadorClicado = false
        }
    }
    
    @IBAction func actionButtonFour(_ sender: UIButton) {
        if labelMostrador.text == "0" || operadorClicado == true {
            labelMostrador.text = "4"
            operadorClicado = false
        } else {
            labelMostrador.text = "\(labelMostrador.text!)4"
            operadorClicado = false
        }
    }
    
    @IBAction func actionButtonFive(_ sender: UIButton) {
        if labelMostrador.text == "0" || operadorClicado == true {
            labelMostrador.text = "5"
            operadorClicado = false
        } else {
            labelMostrador.text = "\(labelMostrador.text!)5"
            operadorClicado = false
        }
    }
    
    @IBAction func actionButtonSix(_ sender: UIButton) {
        if labelMostrador.text == "0" || operadorClicado == true {
            labelMostrador.text = "6"
            operadorClicado = false
        } else {
            labelMostrador.text = "\(labelMostrador.text!)6"
            operadorClicado = false
        }
    }
    
    @IBAction func actionButtonSeven(_ sender: UIButton) {
        if labelMostrador.text == "0" || operadorClicado == true {
            labelMostrador.text = "7"
            operadorClicado = false
        } else {
            labelMostrador.text = "\(labelMostrador.text!)7"
            operadorClicado = false
        }
    }
    
    @IBAction func actionButtonEight(_ sender: UIButton) {
        if labelMostrador.text == "0" || operadorClicado == true {
            labelMostrador.text = "8"
            operadorClicado = false
        } else {
            labelMostrador.text = "\(labelMostrador.text!)8"
            operadorClicado = false
        }
    }
    
    @IBAction func actionButtonNine(_ sender: UIButton) {
        if labelMostrador.text == "0" || operadorClicado == true {
            labelMostrador.text = "9"
            operadorClicado = false
        } else {
            labelMostrador.text = "\(labelMostrador.text!)9"
            operadorClicado = false
        }
    }
    
    @IBAction func actionButtonZero(_ sender: UIButton) {
        if labelMostrador.text == "0" || operadorClicado == true {
            labelMostrador.text = "0"
            operadorClicado = false
        } else {
            labelMostrador.text = "\(labelMostrador.text!)0"
            operadorClicado = false
        }
    }
    
    @IBAction func actionVirgula(_ sender: UIButton) {
        if labelMostrador.text == "0" || operadorClicado == true {
            labelMostrador.text = "0."
            indexVirgula = true
        } else {
            while !indexVirgula {
                labelMostrador.text = "\(labelMostrador.text!)."
                indexVirgula = true
            }
        }
        operadorClicado = false
        
    }
    
    @IBAction func actionSomar(_ sender: UIButton) {
        valor1 = Double(labelMostrador.text!)
        operador = "+"
        operadorClicado = true
        indexVirgula = false
    }
    
    @IBAction func actionSubtrair(_ sender: UIButton) {
        valor1 = Double(labelMostrador.text!)
        operador = "-"
        operadorClicado = true
        indexVirgula = false
    }
    
    @IBAction func actionMultiplicar(_ sender: UIButton) {
        valor1 = Double(labelMostrador.text!)
        operador = "*"
        operadorClicado = true
        indexVirgula = false
    }
    
    @IBAction func actionDividir(_ sender: UIButton) {
        valor1 = Double(labelMostrador.text!)
        operador = "/"
        operadorClicado = true
        indexVirgula = false
    }
    
    
    @IBAction func actionPorcentagem(_ sender: UIButton) {
        if valor1 != nil {
            valor2 = Double(labelMostrador.text!)
        } else {
            valor1 = Double(labelMostrador.text!)
            if let valor1 = valor1 {
                resultado = valor1 / 100
                labelMostrador.text = String(resultado!.clean)
            }
            valor1 = nil
        }
        if let valor1 = valor1, let valor2 = valor2 {
            resultado = valor1 * (valor2 / 100)
            labelMostrador.text = String(resultado!.clean)
        }
        indexVirgula = false
        
        
    }
    
    
    @IBAction func actionAC(_ sender: UIButton) {
        labelMostrador.text = "0"
        valor1 = nil
        valor2 = nil
        indexVirgula = false
        operadorClicado = false
    }
    
    
    @IBAction func actionIgual(_ sender: UIButton) {
        valor2 = Double(labelMostrador.text!)
        if let valor1 = valor1, let valor2 = valor2 {
            if operador == "+" {
                resultado = valor1 + valor2
                labelMostrador.text = String(resultado!.clean)
            } else if operador == "-" {
                resultado = valor1 - valor2
                labelMostrador.text = String(resultado!.clean)
            } else if operador == "*" {
                resultado = valor1 * valor2
                labelMostrador.text = String(resultado!.clean)
            } else if operador == "/" {
                if valor2 == 0 {
                    labelMostrador.text = "Error"
                } else {
                    resultado = valor1 / valor2
                    labelMostrador.text = String(resultado!.clean)
                }
            } else {
                labelMostrador.text = String(valor2.clean)
            }
            operadorClicado = true
            indexVirgula = false
        }
        valor1 = nil
        valor2 = nil

        }
    }

