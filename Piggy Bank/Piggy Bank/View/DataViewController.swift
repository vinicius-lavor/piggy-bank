//
//  DataViewController.swift
//  Piggy Bank
//
//  Created by Vinícius Cavalcante on 21/10/22.
//

import UIKit

class DataViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    let dataTableView = UITableView.init(frame: .zero, style: .insetGrouped)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(dataTableView)
        dataTableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        dataTableView.delegate = self
        dataTableView.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    override func viewDidLayoutSubviews(){
        super.viewDidLayoutSubviews()
        dataTableView.frame = view.bounds
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = dataTableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = "Teste"
        return cell
    }

    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
