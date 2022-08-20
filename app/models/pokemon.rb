class Pokemon < ApplicationRecord
  def found?(guess_x, guess_y, guess_name)
    guess_x.between?((locationX - offset_x),
                     (locationX + offset_x)) && guess_y.between?(locationY - offset_y,
                                                               locationY + offset_y) && guess_name == name
  end
end
