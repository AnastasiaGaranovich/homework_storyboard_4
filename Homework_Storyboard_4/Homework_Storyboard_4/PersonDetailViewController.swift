import UIKit

class PersonDetailsViewController: UIViewController {
    @IBOutlet weak var phoneNumberLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    var personInfo: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = personInfo.name + " " + personInfo.surname
        phoneNumberLabel.text = personInfo.phoneNumber
        emailLabel.text = personInfo.email
    }
}
