//
//  ViewHidden.swift
//  LynnKit
//
//  Created by 王旭超 on 2020/3/28.
//  Copyright © 2020 Rudaor. All rights reserved.
//

import SwiftUI

extension View {
    /// Hide or show the view based on a boolean value.
    ///
    /// Example for visibility:
    /// ```
    /// Text("Label")
    ///     .isHidden(true)
    /// ```
    ///
    /// Example for complete removal:
    /// ```
    /// Text("Label")
    ///     .isHidden(true, remove: true)
    /// ```
    ///
    /// - Parameters:
    ///   - hidden: Set to `false` to show the view. Set to `true` to hide the view.
    ///   - remove: Boolean value indicating whether or not to remove the view.
    func isHidden(_ hidden: Bool, remove: Bool = false) -> some View {
        modifier(HiddenModifier(isHidden: hidden, remove: remove))
    }
}


/// Creates a view modifier to show and hide a view.
///
/// Variables can be used in place so that the content can be changed dynamically.
fileprivate struct HiddenModifier: ViewModifier {

    private let isHidden: Bool
    private let remove: Bool

    init(isHidden: Bool, remove: Bool = false) {
        self.isHidden = isHidden
        self.remove = remove
    }

    func body(content: Content) -> some View {
        Group {
            if isHidden {
                if remove {
                    EmptyView()
                } else {
                    content.hidden()
                }
            } else {
                content
            }
        }
    }
}
