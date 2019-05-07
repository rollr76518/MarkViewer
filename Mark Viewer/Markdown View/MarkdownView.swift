//
//  MarkdownView.swift
//  Mark Viewer
//
//  Created by Nelson on 2019/5/8.
//  Copyright © 2019 Nelson Tai. All rights reserved.
//

import UIKit
import Down

class MarkdownView: UIView {
    private var markdownView: DownView!

    init(frame: CGRect, markdownString: String) {
        super.init(frame: frame)
        guard let mdView = try? DownView(frame: frame, markdownString: markdownString) else {
            return
        }

        addSubview(mdView)
        mdView.translatesAutoresizingMaskIntoConstraints = false
        mdView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        mdView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        mdView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        mdView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        markdownView = mdView
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func update(markdownString: String) {
        try? markdownView.update(markdownString: markdownString)
    }
}
