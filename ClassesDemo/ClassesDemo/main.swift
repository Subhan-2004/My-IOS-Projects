//  Created by APPLE on 8/15/24.

let skeleton = Enemy(health: 50, strength: 10)
print(skeleton.health)
skeleton.attack()

let dragon = Dragon(health: 200, strength: 40)
dragon.wingSpan = 10
dragon.breathFire(speech: "Wooosshhhh")
dragon.move()
dragon.attack()
