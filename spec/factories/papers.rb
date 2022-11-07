FactoryBot.define do
  factory :paper do
   title { "COMPUTING MACHINERY AND INTELLIGENCE" }
   venue { "Mind 49: 433-460" }
   year { 1950 }
    factory :paper2 do
      title { "IRGENDWAS ANDERES" }
      venue { "Mind 49: 433-460" }
      year { 187 }
    end
  end
end