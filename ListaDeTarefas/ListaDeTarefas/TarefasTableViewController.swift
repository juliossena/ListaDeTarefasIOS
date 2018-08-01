//
//  TarefasTableViewController.swift
//  ListaDeTarefas
//
//  Created by Tribanco Dev on 01/08/2018.
//  Copyright © 2018 listaDeTarefas. All rights reserved.
//

import UIKit

class TarefasTableViewController: UITableViewController {
    
    var tarefas: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()

    
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCellEditingStyle.delete {
            let tarefa = TarefaUserDefaults()
            
            tarefa.remover(index: indexPath.row)
            atualizarListaTarefas()
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    
    override func viewDidAppear(_ animated: Bool) {
        atualizarListaTarefas()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return tarefas.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celula", for: indexPath)

        cell.textLabel?.text = tarefas[indexPath.row] 
        return cell
    }
    
    func atualizarListaTarefas() {
        let tarefa = TarefaUserDefaults()
        tarefas = tarefa.listar()
        tableView.reloadData()
    }

}
