

["bcheng90", "danasselin", "ebutler90", "gellieb", "hoathenguyen85", "kevalwell", "laurennicoleroth", "maxrater", "mbouzi", "notika314", "notryanb", "phanendar", "rimmesbe", "sabron13", "samguergen", "steppinlo", "suprfrye", "tracyteague"].each do |user|
  User.create(name: user, password: "123", created_at: "#{rand(2010..2014)}-#{rand(1..12)}-#{rand(1..28)} 03:14:15")
end

users=User.all

users.each do |user|
  5.times do
    Joke.create(line1: Faker::Hacker.say_something_smart, user_id: user.id, created_at: "#{rand(2010..2014)}-#{rand(1..12)}-#{rand(1..28)} 03:14:15")
  end
  10.times do
    Comment.create(message: Faker::Hacker.say_something_smart, user_id: user.id, joke_id: rand(1..90), created_at: "#{rand(2010..2014)}-#{rand(1..12)}-#{rand(1..28)} 03:14:15")
  end
end