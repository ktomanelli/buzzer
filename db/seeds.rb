# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Host.destroy_all
Game.destroy_all
Contestant.destroy_all

h1 = Host.create(name:'kyle')

g1 = Game.create(title:'game show live',host_id:h1.id)

c1 = Contestant.create(name:'con1',game_id:g1.id)
c2 = Contestant.create(name:'con2',game_id:g1.id)
c3 = Contestant.create(name:'con3',game_id:g1.id)
c4 = Contestant.create(name:'con4',game_id:g1.id)
