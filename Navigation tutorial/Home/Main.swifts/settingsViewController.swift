
import UIKit

class settingsViewController: UIViewController {

    // Создается аутлет текстового поля, чтобы забирать его данные
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    

   // Создается экшн кнопки
    @IBAction func goToViolette(_ sender: Any) {
        
        // КОнстанта для ?? создания нового экрана?
        let violetVCreate = storyboard?.instantiateViewController(withIdentifier: "violetteViewController") as! violetteViewController
        
        //Забираем в константу данные из текстфилда методом text
        let text = textField.text
        
        // Обращаемся к константе, которая инициализировала фиолетовый экран. Вызываем через точку ПЕРЕМЕННУЮ НАХОДЯЩУЮСЯ НА violetteViewController.
        // Присваеваем ей значения константы, содаржащей данные текстового поля
        violetVCreate.textFromSettings = text
        
        navigationController?.pushViewController(violetVCreate, animated: true)
        
    }
    
}
