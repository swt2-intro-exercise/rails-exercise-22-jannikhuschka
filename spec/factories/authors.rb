FactoryBot.define do
  factory :author do
    factory :turing do
      first_name { "Alan" }
      last_name { "Turing" }
      homepage { "http://wikipedia.de/Alan_Turing" }
    end
    factory :einstein do
      first_name { "Albert" }
      last_name { "Einstein" }
      homepage { "http://wikipedia.de/Albert_Einstein" }
    end
  end
end
