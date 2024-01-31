//
//  Constants.swift
//  m12.5
//
//  Created by Максим Юрьев on 31.01.2024.
//

import UIKit

enum Constants {
    enum Colors {
        static var blueColor: UIColor? {
            UIColor(named: "BlueTestColor")
        }
        
        static var redColor: UIColor? {
            UIColor(named: "RedTestColor")
        }
        
        static var orangeColor: UIColor? {
            UIColor(named: "OrangeTestColor")
        }
    }
    
    enum Fonts {
        static var helvetica: UIFont? {
            UIFont(name: "Helvetica", size: 30)
        }
        
        static var systemHeading: UIFont {
            UIFont.systemFont(ofSize: 20, weight: .regular)
        }
        
        static var systemText: UIFont{
            UIFont.systemFont(ofSize: 12)
        }
    }
    
    enum Text {
        static let lable1 = Bundle.main.localizedString(forKey: "Label1", value: "", table: "Localizable")
        static let lable2 = Bundle.main.localizedString(forKey: "Label2", value: "", table: "Localizable")
        static let lable3 = Bundle.main.localizedString(forKey: "Label3", value: "", table: "Localizable")
    }
    
    enum Image {
        static let image1 = UIImage(named: "Star")
    }
}
 
