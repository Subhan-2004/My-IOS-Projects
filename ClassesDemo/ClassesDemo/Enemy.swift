class Enemy {
    var health: Int
    var strength: Int
    
    init(health: Int, strength: Int) {
        self.health = health
        self.strength = strength
    }
    
    func move() {
        print("Running")
    }
    
    func attack() {
        print("Land a hit, does \(strength) damage")
    }
}

