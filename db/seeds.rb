["bcheng90", "danasselin", "ebutler90", "gellieb", "hoathenguyen85", "kevalwell", "laurennicoleroth", "maxrater", "mbouzi", "notika314", "notryanb", "phanendar", "rimmesbe", "sabron13", "samguergen", "steppinlo", "suprfrye", "tracyteague", "queerviolet, linkblaine"].each do |user|
  User.create(name: user, password: "123", created_at: "#{rand(2010..2014)}-#{rand(1..12)}-#{rand(1..28)} 03:14:15")
end

users = User.all

users.each do |user|
  5.times do
    Joke.create(line1: Faker::Hacker.say_something_smart, user_id: user.id, created_at: "#{rand(2010..2014)}-#{rand(1..12)}-#{rand(1..28)} 03:14:15")
  end
  10.times do
    Comment.create(message: Faker::Hacker.say_something_smart, user_id: user.id, joke_id: rand(1..100), created_at: "#{rand(2010..2014)}-#{rand(1..12)}-#{rand(1..28)} 03:14:15")
  end
end

Joke.create(line1: "How many 'Hoa's does it take to switch a lightbulb?", line2: "Hoane.", user_id: 18)
Joke.create(line1: "How many DBC students does it take to switch a lightbulb?", line2: "Two students pairing, one coach helping, and finger snaps ready when it's installed.", user_id: 16)
Joke.create(line1: "What did Hoa say when everyone was trying to talk to him with his headphones in?", line2: "Hoa-t?",user_id: 9)
Joke.create(line1: "Why am I making jokes during my assessment/solo challenge?", line2: "Because I'm probably not gonna be listening to the joke during annoucements. Coding brain.", user_id: 1)