import UIKit

var str = "Hello, playground"


struct Resolution {
    var width = 0
    var height = 0
}

class VideoMode {
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name: String?
}

/*
    let someResolution = Resolution()
    let someVideoMode = VideoMode()
*/

// Экземпляры Структур -- новая копия

    let hd = Resolution(width: 1920, height: 1080)
    var cinema = hd
    var square = cinema

cinema.width = 2048
square.width = 1080

// Каждый новый экзмепляр принимает новые значения

/*
print(cinema)
print(square)
*/

// Классы -- ссылочный тип


let tenEighty = VideoMode()
tenEighty.resolution = hd
tenEighty.interlaced = true
tenEighty.name = "1080i"
tenEighty.frameRate = 25.0


// Изменения какого либо свойства в новом экземпляре класса меняет его везде
let alsoTenEighty = tenEighty
alsoTenEighty.frameRate = 30.0

//print(tenEighty.frameRate)

struct Observer {
    
    var name: String {
        
        willSet{
            print("Name want to be change to \(newValue)")
        }
        
        didSet{
            
            print("\(oldValue) was removed")
            
            if name != "" {
                
                name = name.capitalized
                
            } else {
                
                print("Type something")
                
            }
        }
    }
}

var obser = Observer(name: "Artem")

obser.name // Getter
obser.name = "Tema" // Setter
obser.name = "dima"

//print(obser)

// Свойство вычисления

struct CalcComp {
    
    var firstName: String {
        didSet {
            
        firstName = firstName.capitalized
            
        }
    }
    
    var lastName: String
    
    var fullName: String {
        get {
            return firstName + " " + lastName
        }
        set {
            //print("You can set new value here!")
        }
    }
}


let calculator = CalcComp(firstName: "Artem", lastName: "Nedogreev")

calculator.fullName
