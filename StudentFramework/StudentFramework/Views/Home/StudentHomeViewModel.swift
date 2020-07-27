//
//  StudentHomeViewModel.swift
//  StudentFramework
//
//  Created by Juan Trinidad Jimenez Armesto on 28/01/2020.
//  Copyright © 2020 Juan Trinidad Jimenez Armesto. All rights reserved.
//

import Foundation
import Alamofire

final class StudentHomeViewModel {
    
    //------------------------------------------------
    // MARK: - Init
    //------------------------------------------------
    
    init(router: StudentHomeRouter) {
        self.router = router
    }
    
    func setViewProtocol(_ view: StudentHomeViewControllerProtocol) {
        self.view = view
    }
    
    //------------------------------------------------
    // MARK: - Variables and constants
    //------------------------------------------------
    
    private weak var view: StudentHomeViewControllerProtocol?
    private var router: StudentHomeRouter?
    
    //------------------------------------------------
    // MARK: - ViewModel
    //------------------------------------------------
    
    func showDetail() {
        self.router?.showDetail()
    }
    
    func printEnvironment() {
        #if DEBUG
        print("Debug environment")
        #elseif PRE
        print("Prerelease environment")
        #else
        print("Release environment")
        #endif
    }
    
    //------------------------------------------------
    // MARK: - Alamofire
    //------------------------------------------------
    
    func alamofireExample() {
        let url = "https://cat-fact.herokuapp.com/facts/random"
        
        AF.request(url, method: .get, encoding: JSONEncoding.default).validate(statusCode: 200..<300).responseJSON { response in
            
            switch response.result {
            case .success(let responseBody):
                print(responseBody)
            case .failure(let error):
                print(error)
            }
            
        }
    }
    
}
