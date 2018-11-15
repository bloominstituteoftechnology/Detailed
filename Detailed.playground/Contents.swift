enum Animation: String, CaseIterable {
    case bureaucrat = "Talking Bureaucrat"
    case frog = "Talking Frog"
    case ranger = "Talking Ranger"
    case vendor = "Talking Vendor"
    case bot = "Talking Woodbot"
}

print(Animation.bureaucrat.rawValue)



extension Int {
    fileprivate func stringPadded(to count: Int) -> String {
        var string = String(self)
        while string.count < count { string = "0" + string }
        return string
    }
}

let count = 26
for num in (0...count) {
            let imageName = "Henry \(num.stringPadded(to: 3))"
    print(imageName)
}
