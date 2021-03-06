//
//  UITableView+Rx.swift
//  DianDan
//
//  Created by xiaobin liu on 2017/3/10.
//  Copyright © 2017年 Sky. All rights reserved.
//

import UIKit
import RxSwift


public extension Reactive where Base: UITableView {
    
    /// 自动隐藏点击效果
    func enableAutoDeselect() -> Disposable {
        return itemSelected
            .map { (at: $0, animated: true) }
            .subscribe(onNext: base.deselectRow)
    }
    
}

public extension Reactive where Base: UICollectionView {
    
    /// 自动隐藏点击效果
    func enableAutoDeselect() -> Disposable {
        return itemSelected
            .map { (at: $0, animated: true) }
            .subscribe(onNext: base.deselectItem)
    }
    
}

