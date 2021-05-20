//
//  HJTextProtocol.swift
//  FBSnapshotTestCase
//
//  Created by BHJ on 2021/5/19.
//

import Foundation

@available(iOS 9.0, *)
public protocol HJTextFieldProtocol {
    
    func textLayoutChanged(text: HJTextField)
}

@available(iOS 9.0, *)
public protocol HJTextViewdProtocol {
    
    func textLayoutChanged(text: HJCustomTextView)
}
