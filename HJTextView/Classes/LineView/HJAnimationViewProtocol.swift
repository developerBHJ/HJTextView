//
//  HJAnimationViewProtocol.swift
//  FBSnapshotTestCase
//
//  Created by BHJ on 2021/5/19.
//

import Foundation

public enum HJInputViewStyle {
    case line
    case border
    case boderWith(radius: CGFloat)
}

protocol HJInputViewProtocol: AnyObject {
    
    var duration: TimeInterval {set get}
    func beginEdit()
    func endEdit()
    var lineWidth: CGFloat {set get}
    var lineColor: UIColor? {set get}
    var editWidth: CGFloat {set get}
    var editColor: UIColor? {set get}
    var style: HJInputViewStyle {set get}
    func reload()
    //    var lineLayer: CAShapeLayer {set get}
    //    var editLayer: CAShapeLayer {set get}
}


