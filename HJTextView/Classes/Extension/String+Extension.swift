//
//  String+Extension.swift
//  FBSnapshotTestCase
//
//  Created by BHJ on 2021/5/19.
//

import Foundation

extension String{
    
    /// 计算文本高度
    /// - Parameters:
    ///   - width: 文本最大宽度
    ///   - font: 文本字体
    /// - Returns: 文本实际高度
    func calHeightWith(width: CGFloat, font: UIFont?) -> CGFloat {
        
        guard let f = font else {
            return .zero
        }
        
        let size = CGSize(width: width, height: CGFloat.greatestFiniteMagnitude)
        let textH = (self as NSString).boundingRect(with: size,
                                                    options: .usesLineFragmentOrigin,
                                                    attributes: [NSAttributedString.Key.font: f], context: NSStringDrawingContext()).size.height
        return ceil(textH)
    }
}
