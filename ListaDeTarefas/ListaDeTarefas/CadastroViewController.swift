//
//  CadastroViewController.swift
//  ListaDeTarefas
//
//  Created by Tribanco Dev on 01/08/2018.
//  Copyright © 2018 listaDeTarefas. All rights reserved.
//

import UIKit

class CadastroViewController: UIViewController {

    @IBAction func adicionarTarefa(_ sender: Any) {
        if let textoDigitado = tarefaCampo.text {
            
            let tarefa = TarefaUserDefaults()
            tarefa.salvar(tarefa: textoDigitado)
            tarefaCampo.text = ""
        }
    }
    @IBOutlet weak var tarefaCampo: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
