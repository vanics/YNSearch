//
//  YNSearchDefaultOptionButton.swift
//  YNSearch
//
//  Created by Ícaro Oliveira on 12/07/17.
//  Copyright © 2017 SeungyounYi. All rights reserved.
//

import UIKit


open class YNSearchDefaultOptionView: UIView {
    open var ynSearchDefaultOptionButton: YNSearchDefaultOptionButton!
    open var bottomLine: UIView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.initView()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    open func initView() {
        self.ynSearchDefaultOptionButton = YNSearchDefaultOptionButton(frame: CGRect(x: 0, y: 0, width: self.frame.width, height: self.frame.height))
        self.addSubview(ynSearchDefaultOptionButton)
        
        self.bottomLine = UIView(frame: CGRect(x: 0, y: self.frame.height-1, width: self.frame.width, height: 1))
        self.bottomLine.backgroundColor = UIColor.init(colorLiteralRed: 242/255, green: 242/255, blue: 242/255, alpha: 1)
        self.addSubview(bottomLine)
        
    }
}

open class YNSearchDefaultOptionButton: UIButton {
    open var textLabel: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.initView()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override open var isHighlighted: Bool {
        didSet {
            switch isHighlighted {
            case true:
                self.textLabel.textColor = UIColor.darkGray.withAlphaComponent(0.3)
            case false:
                self.textLabel.textColor = UIColor.darkGray
            }
        }
    }
    
    open func initView() {
        let locationImageview = UIImageView(frame: CGRect(x: 0, y: (self.frame.height - 15)/2, width: 15, height: 15))
        let search_location = UIImage(named: "search_history", in: Bundle(for: YNSearch.self), compatibleWith: nil)
        locationImageview.image = search_location
        self.addSubview(locationImageview)
        
        self.textLabel = UILabel(frame: CGRect(x: 25, y: 0, width: self.frame.width - 40, height: self.frame.height))
        self.textLabel.font = UIFont.systemFont(ofSize: 14)
        self.textLabel.textColor = UIColor.darkGray
        self.addSubview(textLabel)
    }
}
