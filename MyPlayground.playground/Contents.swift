import UIKit

extension Int {
    fileprivate func stringPadded(to count: Int) -> String {
    var string = String(self)
    while string.count < count { string = "0" + string }
    return string
    }
}

enum CompassDirection: CaseIterable {
    case north, south, east, west
}

print("There are \(CompassDirection.allCases.count) directions.")
// Prints "There are 4 directions."
let caseList = CompassDirection.allCases
    .map({ "\($0)" })
    .joined(separator: ", ")
// caseList == "north, south, east, west"
