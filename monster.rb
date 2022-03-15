class Monster
  attr_reader :name, :attack_point
  
  def initialize(name, hitpoint, attack_point)
    @name = name
    @hitpoint = hitpoint
    @attack_point = attack_point
  end

  def to_s
    if @hitpoint > 0
      "#{@name}[#{@hitpoint}]"
    else
      "#{@name}[X]"
    end
  end

  def attack(monster)
    monster.take_damage(@attack_point)
    take_damage(0.5 * monster.attack_point)
    puts "#{@name} attacks enemy's #{monster.name}, deals #{@attack_point.to_f} damage and takes #{0.5 * monster.attack_point} damage"
  end
  def take_damage(amount)
    @hitpoint -= amount
  end
end

class IceMonster < Monster
  def attack(monster)
    monster.take_damage(0.2 * @attack_point)
    take_damage(0.5 * monster.attack_point)
    puts "#{@name} uses elemental attack on enemy's #{monster.name}, deals #{0.2 * @attack_point.to_f} damage, takes #{0.5 * monster.attack_point} damage, inflict frozen status for 1 turns with 0 damage each turn"

  end

end
class FireMonster < Monster
  def attack(monster)
    puts "#{@name} uses elemental attack on enemy's #{monster.name}, deals 0 damage, takes #{0.5 * monster.attack_point} damage, inflict burnt status for 3 turns with #{0.4 * @attack_point.to_f} damage each turn"
    # else
    #   take_damage(0.4 * monster.attack_point)
    # end
  end

end