class DiceController < ApplicationController

def homepage
  render({ :template => "dice_templates/homepage"})
end

def dice_roll

  @num_dice = params.fetch("number_of_dice").to_i 
  @sides = params.fetch("number_sides").to_i

  @rolls = []

  @num_dice.times do
    die = rand(1..@sides)

    @rolls.push(die)
  end

  render({ :template => "dice_templates/roll"})

end

end
