class Host < ApplicationRecord
    has_many :games
    has_many :contestants, :through => :games

end