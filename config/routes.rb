Rails.application.routes.draw do

  get("/", { :controller => "dice", :action => "homepage"})

  get("/dice/:number_of_dice/:number_sides", { :controller => "dice", :action => "dice_roll"})

end
