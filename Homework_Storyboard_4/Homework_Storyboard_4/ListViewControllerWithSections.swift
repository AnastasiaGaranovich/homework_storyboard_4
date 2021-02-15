import UIKit

class ListViewControllerWithSections: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    let persons = AppData.person
    
}

extension ListViewControllerWithSections: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return persons.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
            let person = persons[section]
            return person.name + " " + person.surname
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerCell = UIView()
        let label = UILabel(frame: CGRect(x: 20, y: 3, width: 300, height: 20))
        let person = persons[section]
        label.text = person.name + " " + person.surname
        headerCell.backgroundColor = UIColor.lightGray
        headerCell.addSubview(label)
        return headerCell
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let person = persons[indexPath.section]
        cell.textLabel?.text = indexPath.row == 0 ? person.email : person.phoneNumber
        return cell
    }
}
