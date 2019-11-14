//
//  violetteViewController.swift
//  Home
//
//  Created by Artem on 13.11.2019.
//  Copyright © 2019 Artem. All rights reserved.
//

import UIKit

class violetteViewController: UIViewController {
    
    // Переменная, к которой мы обращаемся в settingsViewController которая в дальнейшем будет принимать значения текстового поля
    var textFromSettings:String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Заголовку присваевается значение переменной, принявшей данные из текстового поля экрана settingsViewController
        title = textFromSettings

    }
   
    // в теле экшена вызываем метод НавКонтроллера возвращающай нас на первый рут экран
    @IBAction func homeButton(_ sender: UIButton) {
       
        navigationController?.popToRootViewController(animated: true)
        
    }
}
