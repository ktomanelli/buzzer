class Game < ApplicationRecord
    has_many :contestants
    belongs_to :host

end