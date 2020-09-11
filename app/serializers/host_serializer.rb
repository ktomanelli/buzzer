class HostSerializer < ActiveModel::Serializer
    attributes :id, :name
    has_many :games, serializer: GameSerializer, include_nested_associations: true
    has_many :contestants, through: :games
    # has_many :channels, serializer: ChannelSerializer

end