// SPDX-License-Identifier: MIT
// Copyright © 2018-2019 WireGuard LLC. All Rights Reserved.

import UIKit

class TextCell: UITableViewCell {
    var message: String {
        get { return textLabel?.text ?? "" }
        set(value) { textLabel!.text = value }
    }

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .default, reuseIdentifier: reuseIdentifier)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func prepareForReuse() {
        super.prepareForReuse()
        message = ""
    }
}