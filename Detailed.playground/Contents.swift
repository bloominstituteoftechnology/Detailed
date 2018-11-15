func fps (number: Double) -> Double {
    var count: Double = 0
    var fpsNumber = number
    while fpsNumber >= 15 {
        count += 1
        fpsNumber = fpsNumber - 15
        print(fpsNumber)
    }
    fpsNumber = ((fpsNumber*60)/15)
    fpsNumber = count + (fpsNumber/60)
    return fpsNumber
}

fps(number: 25)
