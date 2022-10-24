
import UIKit

class PiggyTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let piggyTableView = UITableView()
    
    var piggyList: [Piggy] = piggiesArrayList
        
    private var piggyViewModel: PiggiesViewModel!

    override func viewDidLoad() {
        super.viewDidLoad()
        callToViewModelForUIUpdate()
        view.addSubview(piggyTableView)
        piggyTableView.register(PiggyTableViewCell.self, forCellReuseIdentifier: PiggyTableViewCell.identifier)
        piggyTableView.delegate = self
        piggyTableView.dataSource = self
        self.title = "Caixinhas"
        self.navigationController?.navigationBar.prefersLargeTitles = true
//        piggyTableView.largeContentTitle = "Teste"
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        piggyTableView.frame = view.bounds
    }
    
    func callToViewModelForUIUpdate(){
        self.piggyViewModel = PiggiesViewModel()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return piggyList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = piggyTableView.dequeueReusableCell(withIdentifier: PiggyTableViewCell.identifier, for: indexPath) as! PiggyTableViewCell
        cell.config(with: indexPath)
//        cell.textLabel?.text = "Cell \(indexPath.row + 1)"
        return cell
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        let deleteAction = UITableViewRowAction(style: .destructive, title: "Delete") {action, indexPath in
            self.piggyList.remove(at: indexPath.row)
            self.piggyTableView.deleteRows(at: [indexPath], with: .automatic)
        }
        return [deleteAction]
    }
    
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return 100
//    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath)
        self.show(DataViewController(), sender: self)
    }
    
    
    
}
