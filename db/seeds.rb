require 'faker'

 5.times do
   user = User.new(
     email:    Faker::Internet.email,
     password: Faker::Lorem.characters(10),
   )
   user.save!
 end
 users = User.all

 user1 = User.new(
  email: 'user@user.user',
  password: 'useruser'
)
user1.save!

 10.times do
  decisions = Decision.new(
    dilemma: Faker::Lorem.sentence,
    needed_by: Faker::Business.credit_card_expiry_date,
    decision_importance: "trivial",
    indecisiveness_level: "washy",
    best_case: Faker::Lorem.sentence,
    worst_case: Faker::Lorem.sentence,
    gut_feeling: "aklsjdkjasdf, asldkjaslkdjf, asdlkjasldkjf, aljsdflkajsdf, aslkdjfaklsdjf",
    pluses: "akjlsdfkljas, asldkjasdflkjasdflkja, lkajsdflkjasdflkj, aljsdflkjasd",
    minuses: "jkasdlkjas, asldkjfaslkdjf, asdlkfjalsdkjf, alskdjflksdajf",
    intuitive_conclusion: Faker::Lorem.sentence,
    rational_conclusion: Faker::Lorem.sentence,
    next_steps: Faker::Lorem.sentence,
    pipe_dream: true,
    apocalypse: false,
    user: user1,
    final_decision: Faker::Lorem.sentence
  )

  decisions.save!
end


