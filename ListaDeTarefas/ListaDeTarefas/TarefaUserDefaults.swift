//
//  TarefaUserDefaults.swift
//  ListaDeTarefas
//
//  Created by Tribanco Dev on 01/08/2018.
//  Copyright © 2018 listaDeTarefas. All rights reserved.
//

import UIKit

class TarefaUserDefaults {
    
    let chave = "listaTarefas"
    var tarefas :[String] = []
    
    func salvar (tarefa: String) {
        tarefas = listar()
        
        tarefas.append(tarefa)
        UserDefaults.standard.set(tarefas, forKey: chave)
    }
    
    func listar() -> Array<String> {
        let dados = UserDefaults.standard.object(forKey: chave)
        
        if dados != nil {
            return dados as! Array<String>
        } else {
            return []
        }
    }
    
    func remover (index :Int) {
        tarefas = listar()
        tarefas.remove(at: index)
        
        UserDefaults.standard.set(tarefas, forKey: chave)
    }
}
