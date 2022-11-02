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
    factory :nolastname do
      first_name { "No" }
      last_name { "" }
      homepage { "http://wikipedia.de/No_Lastname" }
    end
    factory :nofirstname do
      first_name { "" }
      last_name { "No" }
      homepage { "http://wikipedia.de/No_Firstname" }
    end
  end
end
