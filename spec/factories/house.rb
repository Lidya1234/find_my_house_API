# rubocop:disable Lint/EmptyBlock
FactoryBot.define do
  factory :house do
    name {'Apartment'}
    rank { 3 } 
    price {'3500'}
    image {'https://res.cloudinary.com/lidu4394/image/upload/v1621517741/digital-marketing-agency-ntwrk-g39p1kDjvSY-unsplash_xqmtzj.jpg'}
    description {'Enjoy the amazing in-town neighbourhood
      of Atlanta where you can eat and shop!
       Come home to sleep in our dogs-allowed two bedroom home!'}
  end

  factory :user do
    username { Faker::Internet.email }
    password {'1234567'}
  end

  factory :favorite do
    user
    house
  end
end
# rubocop:enable Lint/EmptyBlock
