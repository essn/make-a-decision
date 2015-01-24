require 'faker'

 5.times do
   user = User.new(
     email:    Faker::Internet.email,
     password: Faker::Lorem.characters(10)
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
    dilemma: `fillerama`,
    needed_by: Faker::Business.credit_card_expiry_date,
    decision_importance: "trivial",
    indecisiveness_level: "washy",
    best_case: `fillerama`,
    worst_case: `fillerama`,
    gut_feeling: "#{`fillerama`}, #{`fillerama`}, #{`fillerama`}, #{`fillerama`}, ",
    pluses: "#{`fillerama`}, #{`fillerama`}, #{`fillerama`}, #{`fillerama`}, ",
    minuses: "#{`fillerama`}, #{`fillerama`}, #{`fillerama`}, #{`fillerama`}, ",
    intuitive_conclusion: `fillerama`,
    rational_conclusion: `fillerama`,
    next_steps: `fillerama`,
    pipe_dream: true,
    apocalypse: false,
    user_id: user1.id,
    final_decision: `fillerama`
  )

  decisions.save!
end

