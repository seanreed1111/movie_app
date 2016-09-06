FactoryGirl.define do
  factory :director do
    sequence(:name) {|n| "Director # #{n}"}
  end

  factory :actor do
    sequence(:name) {|n| "Actor # #{n}"}
  end


  factory :crew do
    sequence(:name) {|n| "Crew # #{n}"}
  end


  factory :movie do
    sequence(:name) {|n| "Movie # #{n}"}
    studio nil
    director nil
  end

  factory :position do
    movie
    trait :for_actor do 
      actor
      cast_and_crew_type "Actor"
      cast_and_crew_id {actor.id}
    end
    trait :for_writer do 
      writer
      cast_and_crew_type "Writer"
      cast_and_crew_id {writer.id}
    end
    trait :for_crew do 
      crew
      cast_and_crew_type "Crew"
      cast_and_crew_id {crew.id}
    end

  end

  factory :studio do
    sequence(:name) {|n| "Studio # #{n}"}
  end


end