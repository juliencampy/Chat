//
//  Created by Alex.M on 08.07.2022.
//

import SwiftUI

struct MessagesSection: Equatable {

    @Environment(\.chatTheme) private var theme
    
    let date: Date
    var rows: [MessageRow]

    static var formatter = {
        return theme.customizations.conversationDateformatter
    }()

    init(date: Date, rows: [MessageRow]) {
        self.date = date
        self.rows = rows
    }

    var formattedDate: String {
        MessagesSection.formatter.string(from: date)
    }

    static func == (lhs: MessagesSection, rhs: MessagesSection) -> Bool {
        lhs.date == rhs.date && lhs.rows == rhs.rows
    }

}
