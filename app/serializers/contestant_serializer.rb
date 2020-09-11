class ContestantSerializer < ActiveModel::Serializer
    attributes :id, :game_id, :name
    belongs_to :game
end