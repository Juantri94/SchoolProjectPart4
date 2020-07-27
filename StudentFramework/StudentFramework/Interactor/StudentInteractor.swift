//
//  StudentInteractor.swift
//  StudentFramework
//
//  Created by Juan Trinidad Jimenez Armesto on 07/02/2020.
//  Copyright © 2020 Juan Trinidad Jimenez Armesto. All rights reserved.
//

import UIKit

public final class StudentInteractor {
    
    public static var studentHome: UIViewController {
        return StudentHomeRouter.get()
    }
    
}
