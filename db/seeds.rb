# require 'ffaker'


# actor_names = %w(NameRU NameCN NameSE NameFR Name NameIT NameDE NameMX NameGR)
# writer_names = %w(NameCN NameIT NameRU Name)
# director_names = %w(NameFR NameRU NameIT Name)
# studio_names = %w(LoremFR Lorem)

# faker_movie = ["FFaker::Music.song", 
#               "FFaker::Music.album",
#               "FFaker::CheesyLingo.sentence",
#               "FFaker::Tweet.body(70)",
#               "FFaker::Address.city"].sample

# faker_actor = "FFaker::#{actor_names.sample}.name"
# faker_writer = "FFaker::#{writer_names.sample}.name"
# faker_director = "FFaker::#{director_names.sample}.name"
# faker_studio = "FFaker::#{studio_names.sample}.word"


# # actor = Actor.find_or_create_by(name: eval(faker_actor))
# # writer = Writer.find_or_create_by(name: eval(faker_writer))
# # director = Director.find_or_create_by(name: eval(faker_director))
# # studio = Studio.find_or_create_by(name: eval(faker_studio))
# # movie = Movie.find_or_create_by(name: eval(faker_movie)) do |film|
# #   film.director_id = director.id
# #   film.studio_id = studio.id
# # end

# #   movie.positions.create(cast_and_crew_type: "Actor",
# #                        cast_and_crew_id: actor.id)


# for i in 1..300
#   actor1 = Actor.find_or_create_by(name: eval(faker_actor))
#   actor2 = Actor.find_or_create_by(name: eval(faker_actor))
#   writer = Writer.find_or_create_by(name: eval(faker_writer))
#   director = Director.find_or_create_by(name: eval(faker_director))
#   studio = Studio.find_or_create_by(name: eval(faker_studio))
#   movie = Movie.find_or_create_by(name: eval(faker_movie)) do |film|
#     film.director_id = director.id
#     film.studio_id = studio.id
#   end
#   movie.positions.create(cast_and_crew_type: "Actor",
#                        cast_and_crew_id: actor1.id)
#   movie.positions.create(cast_and_crew_type: "Actor",
#                        cast_and_crew_id: actor2.id)
# end