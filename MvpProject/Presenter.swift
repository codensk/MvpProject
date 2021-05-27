//
//  Presenter.swift
//  MvpProject
//
//  Created by SERGEY VOROBEV on 27.05.2021.
//

import Foundation

protocol PresenterView: AnyObject {
    
    func updateLabel()
    
}


class Presenter {
    
    // MARK: - Properties
    weak var view: PresenterView?
    
    var timesTapped = 0
    
    // MARK: - Initializers
    init(with view: PresenterView) {
        self.view = view
    }
    
    func buttonTapped() {
        
        timesTapped += 1
        
        if timesTapped >= 5 {
            self.view?.updateLabel()
        }
        
    }
    
}
