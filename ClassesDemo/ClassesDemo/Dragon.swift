class Dragon: Enemy {
    var wingSpan = 3
    
    func breathFire(speech: String) {
        print("Fireeeee \(speech)")
    }
    
    override func move() {
        print("Flying Forwards")
    }
    
    override func attack() {
        super.attack()
        print("Bonus Attack")
    }
}
