class ContestantChannel < ApplicationCable::Channel

    def subscribed
        stream_from 'contestant_channel'
        ContestantChannel.all_contestants(Contestant.all.order(id: :desc))
    end

    def unsubscribed

    end

    def new_contestant(data)
        Contestant.create(name:data["name"],game_id:data["game_id"],buzzed:data["buzzed"])

        ActionCable.server.broadcast('contestant_channel',
            name:data["name"],
            game_id:data["game_id"],
            buzzed:data["buzzed"]
        )
    end

    def buzz(data)
        contestant = Contestant.find(data["contestant_id"])
        contestant.update(buzzed:true)

        ActionCable.server.broadcast('contestant_channel', contestant:contestant)
    end

    def unbuzz(data)
        game = Game.find(data["game_id"])
        game.contestants.each do |contestant|
            contestant.update(buzzed:false)
        end
        ContestantChannel.all_contestants(Contestant.all.order(id: :desc))
    end

    def self.all_contestants(contestants)
        ActionCable.server.broadcast('contestant_channel', contestants:contestants)
    end
end