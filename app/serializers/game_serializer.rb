class GameSerializer < ActiveModel::Serializer
    attributes :id, :host_id, :title
    has_many :contestants, serializer: ContestantSerializer, include_nested_associations: true
end