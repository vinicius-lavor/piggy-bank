
import UIKit

class PiggyTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let piggyTableView = UITableView()
        
    private var piggyViewModel: PiggiesViewModel!

    override func viewDidLoad() {
        super.viewDidLoad()
        callToViewModelForUIUpdate()
        view.addSubview(piggyTableView)
        piggyTableView.register(PiggyTableViewCell.self, forCellReuseIdentifier: PiggyTableViewCell.identifier)
        piggyTableView.delegate = self
        piggyTableView.dataSource = self
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        piggyTableView.frame = view.bounds
    }
    
    func callToViewModelForUIUpdate(){
        self.piggyViewModel = PiggiesViewModel()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = piggyTableView.dequeueReusableCell(withIdentifier: PiggyTableViewCell.identifier, for: indexPath)
        
//        cell.textLabel?.text = "Cell \(indexPath.row + 1)"
        return cell
    }
    
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return 100
//    }
    
}
