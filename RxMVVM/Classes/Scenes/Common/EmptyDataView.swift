//
//  EmptyDataView.swift
//  RxMVVM
//
//  Created by QUANHS on 01/06/2023.
//

import UIKit
import Reusable

final class EmptyDataView: UIView, NibOwnerLoadable {

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.loadNibContent()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.loadNibContent()
    }

}

